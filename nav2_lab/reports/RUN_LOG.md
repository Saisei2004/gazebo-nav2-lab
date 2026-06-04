# Nav2 Optimization Run Log

Append-only. Do not rewrite old entries.

## 2026-06-02T20:00:00+09:00 run=0

- lane: setup
- environment_id: dgx_gazebo_lab
- parameter_set_id: none
- robot_model: turtlebot3_waffle
- start_pose: none
- goal_pose: none
- status: scaffolded
- metrics: not_applicable
- conclusion: Workspace created before ROS/Gazebo installation. Next step is to run `scripts/install_ros_nav2_turtlebot3.sh` with sudo, then run `scripts/check_nav2_stack.sh`.
- next_action: Verify stack, generate worlds, and start baseline trials.

## 2026-06-04T17:37:48+09:00 run=test-fake

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0.0,0.0,0.0
- goal_pose: 1.0,0.0,0.0
- status: fake_success
- metrics: {"trial_dir":"logs/trials/test-fake_20260604-173748"}
- conclusion: Fake Nav2 trial completed for harness validation.
- next_action: Run without NAV2_TRIAL_FAKE after stack verification.

## 2026-06-04T17:38:29+09:00 run=smoke-001

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0,0,0
- goal_pose: 0.8,0,0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":21,"goal_return_code":0,"trial_dir":"logs/trials/smoke-001_20260604-173753"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-04T17:39:50+09:00 run=test-fake

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0.0,0.0,0.0
- goal_pose: 1.0,0.0,0.0
- status: fake_success
- metrics: {"trial_dir":"logs/trials/test-fake_20260604-173950"}
- conclusion: Fake Nav2 trial completed for harness validation.
- next_action: Run without NAV2_TRIAL_FAKE after stack verification.

## 2026-06-04T17:42:37+09:00 run=test-fake

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0.0,0.0,0.0
- goal_pose: 1.0,0.0,0.0
- status: fake_success
- metrics: {"trial_dir":"logs/trials/test-fake_20260604-174237"}
- conclusion: Fake Nav2 trial completed for harness validation.
- next_action: Run without NAV2_TRIAL_FAKE after stack verification.

## 2026-06-04T17:43:51+09:00 run=smoke-003

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2,-0.5,0
- goal_pose: -1,-0.5,0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003_20260604-174238"}
- conclusion: Nav2 smoke trial succeeded: initial pose was accepted and NavigateToPose reached the goal.
- next_action: Add repeated trial matrix execution and parse path/recovery metrics.
