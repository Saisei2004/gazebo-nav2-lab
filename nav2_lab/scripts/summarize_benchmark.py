#!/usr/bin/env python3
"""Summarize Nav2 benchmark_results.csv by experiment id."""

from __future__ import annotations

import argparse
import csv
from collections import defaultdict
from pathlib import Path
from statistics import mean

ROOT = Path(__file__).resolve().parents[1]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "csv_file",
        nargs="?",
        default=str(ROOT / "reports" / "benchmark_results.csv"),
    )
    args = parser.parse_args()

    csv_path = Path(args.csv_file)
    if not csv_path.exists():
        print(f"missing csv: {csv_path}")
        return 2

    groups: dict[str, list[dict[str, str]]] = defaultdict(list)
    with csv_path.open(newline="", encoding="utf-8") as handle:
        for row in csv.DictReader(handle):
            key = row["experiment_id"].rsplit("-r", 1)[0]
            groups[key].append(row)

    print("experiment_id,trials,successes,success_rate,avg_duration_sec,min_duration_sec,max_duration_sec")
    for experiment_id in sorted(groups):
        rows = groups[experiment_id]
        durations = [
            float(row["duration_sec"])
            for row in rows
            if row.get("duration_sec") not in ("", None)
        ]
        successes = sum(1 for row in rows if row.get("success") == "true")
        if durations:
            avg_duration = f"{mean(durations):.2f}"
            min_duration = f"{min(durations):.2f}"
            max_duration = f"{max(durations):.2f}"
        else:
            avg_duration = min_duration = max_duration = ""
        print(
            f"{experiment_id},{len(rows)},{successes},{successes / len(rows):.3f},"
            f"{avg_duration},{min_duration},{max_duration}"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
