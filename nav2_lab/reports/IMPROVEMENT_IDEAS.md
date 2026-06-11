# Improvement Ideas

Append-only. Each idea needs a timestamp, run number, expected upside, and validation plan.

## 2026-06-02T20:00:00+09:00 run=0

- idea: Build a repeatable benchmark harness before changing parameters.
- expected_upside: Prevents anecdotal improvements and lets the agent measure real gains.
- validation_plan: Compare baseline Nav2 default parameters across fixed worlds and repeated start/goal/yaw samples.

- idea: Treat MPPI, Regulated Pure Pursuit, and DWB as separate controller families.
- expected_upside: Avoids mixing incompatible parameter assumptions.
- validation_plan: Run each controller family on identical known and unknown scenario sets, then maintain separate Pareto fronts.


## 2026-06-11T14:35:00+09:00 - Optimization phase started

- Switched active matrix from baseline-only to baseline controls plus candidate profiles.
- Candidate profiles: `fast_controller`, `goal_tolerance_relaxed`, `stability_wait`.
- First targets: reduce `failed_goal_rc_0`; reduce `tb3-short-north` duration.
- Evidence rule: keep candidate only if CSV shows equal/better success rate and better duration or stability.


## 2026-06-11T17:45:00+09:00 - Candidate removed: stability_wait

- Evidence: `stability-smoke` produced runner_failed because `controller_server` failed lifecycle configure.
- Root cause from launch log: MPPI controller rejected `controller_frequency: 15.0` with `Controller period more then model dt`.
- Decision: remove `stability-smoke` from the active matrix to avoid repeated known-bad trials.
- Next action: keep testing `fast_controller`, `goal_tolerance_relaxed`, and yaw variants against baseline controls.
