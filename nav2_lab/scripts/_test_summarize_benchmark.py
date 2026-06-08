#!/usr/bin/env python3
from __future__ import annotations

import subprocess
import tempfile
from pathlib import Path


def main() -> int:
    with tempfile.TemporaryDirectory() as tmp:
        csv_path = Path(tmp) / "benchmark_results.csv"
        csv_path.write_text(
            "\n".join(
                [
                    "timestamp,experiment_id,lane,world,params,start_pose,goal_pose,status,success,duration_sec,trial_dir",
                    't,a-r1,l,w,p,"0,0,0","1,0,0",success,true,3,d1',
                    't,a-r2,l,w,p,"0,0,0","1,0,0",success,true,5,d2',
                    't,b-r1,l,w,p,"0,0,0","1,0,0",failed,false,10,d3',
                ]
            )
            + "\n",
            encoding="utf-8",
        )
        proc = subprocess.run(
            ["scripts/summarize_benchmark.py", str(csv_path)],
            check=True,
            text=True,
            capture_output=True,
        )
        output = proc.stdout
        assert "a,2,2,1.000,4.00,3.00,5.00" in output
        assert "b,1,0,0.000,10.00,10.00,10.00" in output
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
