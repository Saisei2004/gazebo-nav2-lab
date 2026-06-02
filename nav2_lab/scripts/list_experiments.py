#!/usr/bin/env python3
"""Print the experiment lanes and initial scenario grid."""

from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

LANES = {
    "known_environment_optimization": ["known_warehouse_small", "known_narrow_corridors"],
    "unknown_environment_optimization": ["unknown_random_blocks_001", "unknown_random_blocks_002", "unknown_random_blocks_003"],
    "autonomous_exploration": ["unknown_random_blocks_004", "unknown_random_blocks_005"],
}

STARTS = [
    (-5.5, -5.5, 0),
    (-5.5, 5.5, 90),
    (5.5, -5.5, 180),
    (5.5, 5.5, 270),
]

GOALS = [
    (5.5, 5.5, 0),
    (5.5, -5.5, 0),
    (-5.5, 5.5, 0),
    (0.0, 0.0, 0),
]


def main() -> int:
    run = 1
    for lane, worlds in LANES.items():
        for world in worlds:
            for start in STARTS:
                for goal in GOALS:
                    print(
                        f"run={run:04d} lane={lane} world={world} "
                        f"start=({start[0]},{start[1]},{start[2]}) "
                        f"goal=({goal[0]},{goal[1]},{goal[2]})"
                    )
                    run += 1
    print(f"total_candidate_trials={run - 1}")
    print(f"world_dir={ROOT / 'worlds'}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
