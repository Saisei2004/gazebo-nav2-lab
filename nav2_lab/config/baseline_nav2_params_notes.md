# Baseline Nav2 Parameters

Use official Nav2 bringup defaults as the first baseline, then copy and mutate parameter files into this directory.

Parameter candidates should be named:

```text
params/<lane>/<run_number>_<short_id>.yaml
```

Every candidate must be recorded in `reports/RUN_LOG.md` with:

- what changed
- why it changed
- expected effect
- actual result
- whether it beats the current best baseline

Do not optimize a single metric blindly. Keep a Pareto view over success rate, time, path efficiency, and safety.
