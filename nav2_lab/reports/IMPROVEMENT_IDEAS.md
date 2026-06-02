# Improvement Ideas

Append-only. Each idea needs a timestamp, run number, expected upside, and validation plan.

## 2026-06-02T20:00:00+09:00 run=0

- idea: Build a repeatable benchmark harness before changing parameters.
- expected_upside: Prevents anecdotal improvements and lets the agent measure real gains.
- validation_plan: Compare baseline Nav2 default parameters across fixed worlds and repeated start/goal/yaw samples.

- idea: Treat MPPI, Regulated Pure Pursuit, and DWB as separate controller families.
- expected_upside: Avoids mixing incompatible parameter assumptions.
- validation_plan: Run each controller family on identical known and unknown scenario sets, then maintain separate Pareto fronts.
