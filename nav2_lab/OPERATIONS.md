# Nav2 24h Operations

Start the forever agent from DGX:

```bash
cd ~/saisei_ws/dev_agent
./start_nav2_forever.sh
```

Check status:

```bash
./status_nav2_forever.sh
```

Append a human follow-up instruction:

```bash
./followup_nav2.sh "Prioritize repeated known-environment trials before exploration."
```

Show follow-up inbox:

```bash
./followup_nav2.sh --show
```

Stop:

```bash
./stop_nav2_forever.sh
```

The agent reads `HUMAN_FOLLOWUP.md` before choosing each new delegated task.
