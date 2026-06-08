#!/usr/bin/env python3
"""Write an hourly Nav2 lab report from benchmark CSV and runner state."""

from __future__ import annotations

import csv
import subprocess
from collections import Counter, defaultdict
from datetime import datetime
from pathlib import Path
from statistics import mean

ROOT = Path(__file__).resolve().parents[1]
RESULTS = ROOT / "reports" / "benchmark_results.csv"
REPORT = ROOT / "reports" / "HOURLY_NAV2_REPORT.md"


def run_text(cmd: list[str]) -> str:
    try:
        return subprocess.run(
            cmd,
            cwd=ROOT,
            text=True,
            capture_output=True,
            check=False,
            timeout=10,
        ).stdout.strip()
    except Exception as exc:  # noqa: BLE001
        return f"unavailable: {exc}"


def load_rows() -> list[dict[str, str]]:
    if not RESULTS.exists():
        return []
    with RESULTS.open(newline="", encoding="utf-8") as handle:
        return list(csv.DictReader(handle))


def summarize(rows: list[dict[str, str]]) -> list[str]:
    groups: dict[str, list[dict[str, str]]] = defaultdict(list)
    for row in rows:
        experiment_id = row.get("experiment_id", "unknown").rsplit("-r", 1)[0]
        groups[experiment_id].append(row)

    lines = [
        "| experiment | trials | success | success_rate | avg_sec | min_sec | max_sec |",
        "| --- | ---: | ---: | ---: | ---: | ---: | ---: |",
    ]
    for experiment_id in sorted(groups):
        group = groups[experiment_id]
        successes = sum(1 for row in group if row.get("success") == "true")
        durations = [
            float(row["duration_sec"])
            for row in group
            if row.get("duration_sec") not in ("", None)
        ]
        if durations:
            avg_sec = f"{mean(durations):.2f}"
            min_sec = f"{min(durations):.2f}"
            max_sec = f"{max(durations):.2f}"
        else:
            avg_sec = min_sec = max_sec = ""
        lines.append(
            f"| {experiment_id} | {len(group)} | {successes} | "
            f"{successes / len(group):.3f} | {avg_sec} | {min_sec} | {max_sec} |"
        )
    return lines


def main() -> int:
    rows = load_rows()
    now = datetime.now().astimezone().isoformat(timespec="seconds")
    statuses = Counter(row.get("status", "unknown") for row in rows)
    recent = rows[-12:]

    tmux = run_text(["tmux", "ls"])
    processes = run_text(
        [
            "bash",
            "-lc",
            'pgrep -af "run_continuous_nav2_batches|run_repeated_trials|run_nav2_trial|ros2 launch|forge_agent|overseer_agent" || true',
        ]
    )
    git_head = run_text(["git", "log", "--oneline", "-1"])

    content: list[str] = []
    content.append("# Hourly Nav2 Report")
    content.append("")
    content.append(f"- generated_at: {now}")
    content.append(f"- total_trials: {len(rows)}")
    content.append(f"- latest_git: {git_head}")
    content.append("")
    content.append("## Summary")
    content.append("")
    content.extend(summarize(rows))
    content.append("")
    content.append("## Status Counts")
    content.append("")
    for status, count in sorted(statuses.items()):
        content.append(f"- {status}: {count}")
    content.append("")
    content.append("## Recent Trials")
    content.append("")
    content.append("| timestamp | experiment | status | success | duration_sec |")
    content.append("| --- | --- | --- | --- | ---: |")
    for row in recent:
        content.append(
            f"| {row.get('timestamp', '')} | {row.get('experiment_id', '')} | "
            f"{row.get('status', '')} | {row.get('success', '')} | {row.get('duration_sec', '')} |"
        )
    content.append("")
    content.append("## Runner State")
    content.append("")
    content.append("```text")
    content.append(tmux)
    content.append("```")
    content.append("")
    content.append("## Active Processes")
    content.append("")
    content.append("```text")
    content.append(processes)
    content.append("```")
    content.append("")
    content.append("## Notes")
    content.append("")
    content.append("- `smoke-003-repeat` is the main stability probe for intermittent goal rejection.")
    content.append("- `tb3-short-east` is currently stable and fast.")
    content.append("- `tb3-short-north` is stable but slow, so it remains a tuning target.")

    REPORT.parent.mkdir(parents=True, exist_ok=True)
    REPORT.write_text("\n".join(content) + "\n", encoding="utf-8")
    print(REPORT)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
