#!/usr/bin/env python3
"""Append a structured run entry to reports/RUN_LOG.md."""

from __future__ import annotations

import argparse
import os
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
RUN_LOG = Path(os.environ.get("RUN_LOG_FILE", ROOT / "reports" / "RUN_LOG.md"))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--run", required=True)
    parser.add_argument("--lane", required=True)
    parser.add_argument("--environment", required=True)
    parser.add_argument("--params", default="unknown")
    parser.add_argument("--robot", default="turtlebot3_waffle")
    parser.add_argument("--start", default="unknown")
    parser.add_argument("--goal", default="unknown")
    parser.add_argument("--status", default="unknown")
    parser.add_argument("--metrics", default="{}")
    parser.add_argument("--conclusion", default="")
    parser.add_argument("--next-action", default="")
    args = parser.parse_args()

    timestamp = datetime.now(timezone.utc).astimezone().isoformat(timespec="seconds")
    entry = f"""
## {timestamp} run={args.run}

- lane: {args.lane}
- environment_id: {args.environment}
- parameter_set_id: {args.params}
- robot_model: {args.robot}
- start_pose: {args.start}
- goal_pose: {args.goal}
- status: {args.status}
- metrics: {args.metrics}
- conclusion: {args.conclusion}
- next_action: {args.next_action}
"""
    RUN_LOG.parent.mkdir(parents=True, exist_ok=True)
    with RUN_LOG.open("a", encoding="utf-8") as handle:
        handle.write(entry)
    print(f"appended {RUN_LOG}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
