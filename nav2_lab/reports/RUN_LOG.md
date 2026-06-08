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

## 2026-06-08T14:49:51+09:00 run=test-fake

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0.0,0.0,0.0
- goal_pose: 1.0,0.0,0.0
- status: fake_success
- metrics: {"trial_dir":"logs/trials/test-fake_20260608-144951"}
- conclusion: Fake Nav2 trial completed for harness validation.
- next_action: Run without NAV2_TRIAL_FAKE after stack verification.

## 2026-06-08T14:50:16+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-144957"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T14:50:19+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-144957","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:27:44+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-152725"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:27:46+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-152725","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:28:02+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-152746"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:28:05+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-152746","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:28:22+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-152805"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:28:24+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-152805","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:28:44+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-152824"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:28:46+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260608-152824","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:29:05+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-152846"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:29:08+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260608-152846","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:29:27+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-152908"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:29:30+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260608-152908","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:30:31+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-152930"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:30:33+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r1_20260608-152930","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:31:34+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-153033"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:31:36+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-153033","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:32:16+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":27,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-153136"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:32:19+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"27","trial_dir":"logs/trials/tb3-short-north-r3_20260608-153136","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:33:55+09:00 run=test-fake

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0.0,0.0,0.0
- goal_pose: 1.0,0.0,0.0
- status: fake_success
- metrics: {"trial_dir":"logs/trials/test-fake_20260608-153355"}
- conclusion: Fake Nav2 trial completed for harness validation.
- next_action: Run without NAV2_TRIAL_FAKE after stack verification.

## 2026-06-08T15:34:34+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-153413"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:34:37+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-153413","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:34:52+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":0,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-153437"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:34:55+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"0","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-153437","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:35:12+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-153455"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:35:14+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-153455","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:35:34+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-153515"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:35:36+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-153515","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:35:51+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-153537"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:36:28+09:00 run=test-fake

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0.0,0.0,0.0
- goal_pose: 1.0,0.0,0.0
- status: fake_success
- metrics: {"trial_dir":"logs/trials/test-fake_20260608-153628"}
- conclusion: Fake Nav2 trial completed for harness validation.
- next_action: Run without NAV2_TRIAL_FAKE after stack verification.

## 2026-06-08T15:38:21+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-153655"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:38:23+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-153655","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:44:01+09:00 run=test-fake

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0.0,0.0,0.0
- goal_pose: 1.0,0.0,0.0
- status: fake_success
- metrics: {"trial_dir":"logs/trials/test-fake_20260608-154401"}
- conclusion: Fake Nav2 trial completed for harness validation.
- next_action: Run without NAV2_TRIAL_FAKE after stack verification.

## 2026-06-08T15:45:20+09:00 run=stability-check

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_lifecycle_timeout
- metrics: {"trial_dir":"logs/trials/stability-check_20260608-154429"}
- conclusion: Nav2 lifecycle nodes were not active before sending the goal.
- next_action: Inspect lifecycle startup logs and increase startup timeout if needed.

## 2026-06-08T15:46:40+09:00 run=stability-check2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/stability-check2_20260608-154555"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:47:36+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-154654"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:47:39+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-154654","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:48:49+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-154749"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:48:51+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-154749","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:50:00+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-154901"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:50:03+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-154901","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:52:50+09:00 run=lifecycle-check

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/lifecycle-check_20260608-155122"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:53:51+09:00 run=test-fake

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0.0,0.0,0.0
- goal_pose: 1.0,0.0,0.0
- status: fake_success
- metrics: {"trial_dir":"logs/trials/test-fake_20260608-155351"}
- conclusion: Fake Nav2 trial completed for harness validation.
- next_action: Run without NAV2_TRIAL_FAKE after stack verification.

## 2026-06-08T15:55:30+09:00 run=test-fake

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: 0.0,0.0,0.0
- goal_pose: 1.0,0.0,0.0
- status: fake_success
- metrics: {"trial_dir":"logs/trials/test-fake_20260608-155530"}
- conclusion: Fake Nav2 trial completed for harness validation.
- next_action: Run without NAV2_TRIAL_FAKE after stack verification.

## 2026-06-08T15:55:58+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-155540"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:56:01+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-155540","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:57:09+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-155646"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:57:12+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-155646","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T15:59:01+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-155839"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T15:59:04+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-155839","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:00:55+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-160034"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:00:57+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-160034","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:02:47+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-160227"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:02:50+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-160227","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:04:43+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-160420"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:04:46+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260608-160420","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:06:38+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-160616"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:06:40+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-160616","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:08:32+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-160811"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:08:35+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-160811","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:11:09+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-161005"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:11:12+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260608-161005","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:13:47+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-161242"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:13:50+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-161242","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:16:25+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-161520"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:16:27+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-161520","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":1,"started_at":"2026-06-08T15:58:39+0900","finished_at":"2026-06-08T16:17:57+0900","rc":0}

## 2026-06-08T16:19:19+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-161858"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:19:22+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-161858","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:21:11+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-162052"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:21:14+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-162052","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:23:01+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-162244"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:23:04+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-162244","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:24:58+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-162434"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:25:00+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260608-162434","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:26:52+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-162630"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:26:55+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-162630","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:28:48+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-162825"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:28:50+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260608-162825","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:31:25+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-163021"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:31:27+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260608-163021","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:34:02+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-163257"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:34:04+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260608-163257","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:36:40+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":50,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-163535"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:36:42+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"50","trial_dir":"logs/trials/tb3-short-north-r3_20260608-163535","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":2,"started_at":"2026-06-08T16:18:57+0900","finished_at":"2026-06-08T16:38:12+0900","rc":0}

## 2026-06-08T16:39:32+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-163913"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:39:35+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-163913","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:41:25+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-164105"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:41:27+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-164105","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:43:17+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-164257"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:43:20+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-164257","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:45:12+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-164450"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:45:15+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260608-164450","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:47:06+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-164645"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:47:09+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-164645","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:49:02+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-164839"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:49:05+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260608-164839","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:51:39+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-165035"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:51:42+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260608-165035","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:54:18+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-165312"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:54:21+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260608-165312","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T16:56:55+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-165551"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:56:58+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-165551","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":3,"started_at":"2026-06-08T16:39:13+0900","finished_at":"2026-06-08T16:58:28+0900","rc":0}

## 2026-06-08T16:59:48+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-165928"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T16:59:51+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-165928","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:01:41+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-170121"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:01:44+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-170121","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:03:31+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-170314"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:03:34+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-170314","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:05:26+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-170504"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:05:29+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-170504","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:07:16+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-170659"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:07:19+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r2_20260608-170659","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:09:10+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-170849"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:09:13+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-170849","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:11:14+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":15,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-171043"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:11:17+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"15","trial_dir":"logs/trials/tb3-short-north-r1_20260608-171043","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:13:52+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-171247"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:13:54+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-171247","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:16:29+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-171524"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:16:32+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-171524","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":4,"started_at":"2026-06-08T16:59:28+0900","finished_at":"2026-06-08T17:18:02+0900","rc":0}

## 2026-06-08T17:19:24+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-171902"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:19:27+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-171902","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:21:16+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-172057"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:21:19+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-172057","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:23:09+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-172249"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:25:03+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-172442"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:25:06+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-172442","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:26:57+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-172636"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:27:00+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-172636","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:28:51+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-172830"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:28:54+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-172830","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:31:29+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-173024"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:31:31+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r1_20260608-173024","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:34:07+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-173301"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:34:10+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260608-173301","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:36:45+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-173540"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:36:47+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260608-173540","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":5,"started_at":"2026-06-08T17:19:02+0900","finished_at":"2026-06-08T17:38:17+0900","rc":0}

## 2026-06-08T17:39:38+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-173918"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:39:41+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-173918","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:41:33+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-174111"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:41:35+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-174111","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:43:25+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-174306"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:43:28+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-174306","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:45:20+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-174458"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:45:22+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260608-174458","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:47:14+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-174652"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:47:17+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-174652","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:49:11+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":7,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-174847"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:49:13+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"7","trial_dir":"logs/trials/tb3-short-east-r3_20260608-174847","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:51:47+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-175044"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:51:50+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r1_20260608-175044","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:54:27+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":50,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-175320"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:54:29+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"50","trial_dir":"logs/trials/tb3-short-north-r2_20260608-175320","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T17:56:18+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-175559"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:56:20+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r3_20260608-175559","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":6,"started_at":"2026-06-08T17:39:17+0900","finished_at":"2026-06-08T17:57:50+0900","rc":0}

## 2026-06-08T17:59:09+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-175851"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T17:59:12+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-175851","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:01:02+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-180042"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:01:05+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-180042","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:02:55+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-180235"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:02:58+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-180235","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:04:49+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-180428"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:04:52+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-180428","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:06:41+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-180622"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:06:43+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"3","trial_dir":"logs/trials/tb3-short-east-r2_20260608-180622","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:08:36+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-180813"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:08:38+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-180813","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:11:14+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-181009"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:11:17+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260608-181009","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:13:51+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-181247"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:13:54+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-181247","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:16:28+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-181524"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:16:31+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-181524","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":7,"started_at":"2026-06-08T17:58:50+0900","finished_at":"2026-06-08T18:18:01+0900","rc":0}

## 2026-06-08T18:19:21+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-181901"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:19:23+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-181901","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:21:14+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-182053"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:21:16+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-182053","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:23:08+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-182246"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:23:11+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-182246","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:25:02+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-182441"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:25:05+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-182441","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:26:58+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-182635"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:27:00+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260608-182635","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:28:53+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-182830"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:28:56+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-182830","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:31:33+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":50,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-183026"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:31:35+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"50","trial_dir":"logs/trials/tb3-short-north-r1_20260608-183026","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:33:23+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-183305"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:33:25+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r2_20260608-183305","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:36:00+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-183456"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:36:03+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r3_20260608-183456","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":8,"started_at":"2026-06-08T18:19:01+0900","finished_at":"2026-06-08T18:37:33+0900","rc":0}

## 2026-06-08T18:38:53+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-183833"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:38:56+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-183833","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:40:49+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-184026"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:40:52+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-184026","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:42:42+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-184222"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:42:45+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-184222","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:44:36+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-184415"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:44:38+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-184415","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:46:31+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-184609"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:46:34+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260608-184609","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:48:26+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-184804"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:48:29+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-184804","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:51:04+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-184959"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:51:07+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260608-184959","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:53:04+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":10,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-185237"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:53:06+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"10","trial_dir":"logs/trials/tb3-short-north-r2_20260608-185237","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T18:55:41+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-185436"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:55:44+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-185436","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":9,"started_at":"2026-06-08T18:38:33+0900","finished_at":"2026-06-08T18:57:14+0900","rc":0}

## 2026-06-08T18:58:34+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-185814"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T18:58:37+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-185814","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:00:26+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-190007"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:00:29+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-190007","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:02:20+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-190159"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:02:23+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-190159","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:04:17+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-190353"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:04:20+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260608-190353","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:06:12+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-190550"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:06:14+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260608-190550","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:08:06+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-190745"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:08:09+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-190745","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:10:05+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":10,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-190939"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:10:07+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"10","trial_dir":"logs/trials/tb3-short-north-r1_20260608-190939","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:12:42+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-191138"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:12:45+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r2_20260608-191138","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:15:20+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-191415"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:15:23+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-191415","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":10,"started_at":"2026-06-08T18:58:14+0900","finished_at":"2026-06-08T19:16:53+0900","rc":0}

## 2026-06-08T19:18:13+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-191753"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:18:16+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-191753","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:20:07+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-191946"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:20:10+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-191946","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:22:02+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-192140"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:22:05+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-192140","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:23:57+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-192335"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:23:59+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260608-192335","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:25:47+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-192530"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:25:49+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r2_20260608-192530","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:27:41+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-192720"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:27:44+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-192720","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:30:04+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":34,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-192914"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:30:06+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"34","trial_dir":"logs/trials/tb3-short-north-r1_20260608-192914","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:32:42+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-193137"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:32:45+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-193137","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:35:19+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-193415"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:35:22+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-193415","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":11,"started_at":"2026-06-08T19:17:53+0900","finished_at":"2026-06-08T19:36:52+0900","rc":0}

## 2026-06-08T19:38:09+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-193752"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:38:12+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-193752","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:40:02+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-193942"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:40:05+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-193942","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:41:55+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-194135"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:41:58+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-194135","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:43:50+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-194328"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:43:53+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-194328","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:45:47+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-194523"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:45:50+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260608-194523","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:47:42+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-194720"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:47:45+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-194720","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:50:19+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-194915"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:50:22+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r1_20260608-194915","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:52:57+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-195152"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:52:59+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260608-195152","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T19:55:33+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-195430"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:55:36+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r3_20260608-195430","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":12,"started_at":"2026-06-08T19:37:52+0900","finished_at":"2026-06-08T19:57:06+0900","rc":0}

## 2026-06-08T19:58:26+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-195806"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T19:58:29+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-195806","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:00:19+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-195959"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:00:22+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-195959","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:02:11+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-200152"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:02:14+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-200152","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:04:05+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-200344"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:04:08+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-200344","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:06:01+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-200538"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:06:04+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-200538","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:07:56+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-200734"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:07:59+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-200734","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:10:33+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-200929"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:10:35+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260608-200929","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:12:23+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-201205"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:12:25+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r2_20260608-201205","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:15:01+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-201355"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:15:03+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260608-201355","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":13,"started_at":"2026-06-08T19:58:06+0900","finished_at":"2026-06-08T20:16:33+0900","rc":0}

## 2026-06-08T20:17:55+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-201733"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:17:57+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-201733","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:19:47+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-201927"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:19:50+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-201927","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:21:41+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-202120"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:21:44+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-202120","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:23:36+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-202314"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:23:39+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-202314","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:25:32+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-202509"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:25:34+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260608-202509","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:27:28+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":7,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-202704"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:27:31+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"7","trial_dir":"logs/trials/tb3-short-east-r3_20260608-202704","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:30:06+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-202901"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:30:09+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r1_20260608-202901","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:32:43+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-203139"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:32:46+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260608-203139","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:35:20+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-203416"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:35:22+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-203416","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":14,"started_at":"2026-06-08T20:17:33+0900","finished_at":"2026-06-08T20:36:52+0900","rc":0}

## 2026-06-08T20:38:13+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-203753"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:38:16+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-203753","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:40:06+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-203946"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:40:09+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-203946","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:41:57+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-204139"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:41:59+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-204139","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:43:49+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-204329"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:43:51+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/tb3-short-east-r1_20260608-204329","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:45:43+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-204521"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:45:46+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260608-204521","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:47:38+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-204716"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:47:41+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-204716","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:49:40+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":13,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-204911"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:49:43+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"13","trial_dir":"logs/trials/tb3-short-north-r1_20260608-204911","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:52:18+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":50,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-205113"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:52:20+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"50","trial_dir":"logs/trials/tb3-short-north-r2_20260608-205113","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:54:56+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-205350"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:54:59+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260608-205350","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":15,"started_at":"2026-06-08T20:37:52+0900","finished_at":"2026-06-08T20:56:29+0900","rc":0}

## 2026-06-08T20:57:49+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-205730"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:57:52+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-205730","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T20:59:42+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-205922"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T20:59:45+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-205922","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:01:35+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-210115"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:01:37+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-210115","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:03:31+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":7,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-210308"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:03:33+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"7","trial_dir":"logs/trials/tb3-short-east-r1_20260608-210308","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:05:25+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-210503"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:05:27+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-210503","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:07:20+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":7,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-210658"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:07:22+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"7","trial_dir":"logs/trials/tb3-short-east-r3_20260608-210658","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:09:58+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-210853"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:10:01+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r1_20260608-210853","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:12:34+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-211131"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:12:37+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r2_20260608-211131","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:14:24+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-211407"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:14:27+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r3_20260608-211407","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":16,"started_at":"2026-06-08T20:57:29+0900","finished_at":"2026-06-08T21:15:57+0900","rc":0}

## 2026-06-08T21:17:17+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-211657"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:17:19+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-211657","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:19:09+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-211849"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:19:12+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-211849","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:21:01+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-212042"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:21:04+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-212042","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:22:55+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-212234"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:22:58+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-212234","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:24:50+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-212428"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:24:53+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-212428","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:26:40+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-212623"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:26:43+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r3_20260608-212623","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:29:17+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-212813"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:29:20+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260608-212813","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:31:55+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-213050"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:31:58+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260608-213050","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:34:32+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-213328"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:34:35+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-213328","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":17,"started_at":"2026-06-08T21:16:57+0900","finished_at":"2026-06-08T21:36:05+0900","rc":0}

## 2026-06-08T21:37:25+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-213705"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:37:28+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-213705","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:39:19+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-213858"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:39:21+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-213858","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:41:12+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-214051"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:41:14+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-214051","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:43:07+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-214245"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:43:10+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260608-214245","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:45:02+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-214440"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:45:04+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-214440","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:46:58+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":7,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-214634"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:47:00+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"7","trial_dir":"logs/trials/tb3-short-east-r3_20260608-214634","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:49:34+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-214831"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:49:37+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r1_20260608-214831","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:52:13+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-215107"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:52:15+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260608-215107","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:54:50+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-215346"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:54:53+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-215346","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":18,"started_at":"2026-06-08T21:37:05+0900","finished_at":"2026-06-08T21:56:23+0900","rc":0}

## 2026-06-08T21:57:43+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-215723"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:57:45+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-215723","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T21:59:35+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-215915"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T21:59:38+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-215915","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:01:25+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-220108"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:01:28+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-220108","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:03:20+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-220258"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:03:22+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260608-220258","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:05:14+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-220453"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:05:17+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-220453","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:07:08+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-220647"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:07:11+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-220647","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:09:46+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-220841"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:09:49+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260608-220841","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:12:24+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-221119"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:12:27+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-221119","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:15:03+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-221357"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:15:05+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260608-221357","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":19,"started_at":"2026-06-08T21:57:23+0900","finished_at":"2026-06-08T22:16:35+0900","rc":0}

## 2026-06-08T22:17:56+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-221736"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:17:59+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-221736","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:19:49+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-221929"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:19:52+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-221929","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:21:40+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-222122"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:21:42+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-222122","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:23:34+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-222312"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:23:37+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-222312","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:25:25+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-222507"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:25:28+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/tb3-short-east-r2_20260608-222507","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:27:19+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-222658"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:27:22+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-222658","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:29:57+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-222852"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:30:00+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260608-222852","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:32:34+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-223130"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:32:37+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-223130","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:35:13+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-223407"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:35:16+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-223407","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":20,"started_at":"2026-06-08T22:17:35+0900","finished_at":"2026-06-08T22:36:46+0900","rc":0}

## 2026-06-08T22:38:06+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-223746"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:38:08+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-223746","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:39:58+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-223939"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:40:01+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-223939","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:41:51+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-224131"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:41:53+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-224131","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:43:46+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-224323"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:43:48+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-224323","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:45:41+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-224519"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:45:44+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-224519","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:47:36+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-224714"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:47:39+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-224714","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:49:27+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-224909"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:49:30+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/tb3-short-north-r1_20260608-224909","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:51:17+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-225100"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:51:20+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r2_20260608-225100","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:53:54+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-225250"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:53:57+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-225250","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":21,"started_at":"2026-06-08T22:37:46+0900","finished_at":"2026-06-08T22:55:27+0900","rc":0}

## 2026-06-08T22:56:49+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-225627"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:56:51+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-225627","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T22:58:42+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-225821"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T22:58:45+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-225821","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:00:35+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-230015"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:00:38+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-230015","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:02:29+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-230208"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:02:32+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-230208","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:04:26+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-230402"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:04:28+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260608-230402","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:06:20+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-230558"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:06:22+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-230558","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:08:57+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-230752"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:09:00+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r1_20260608-230752","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:11:35+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-231030"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:11:38+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-231030","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:14:12+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-231308"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:14:15+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r3_20260608-231308","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":22,"started_at":"2026-06-08T22:56:27+0900","finished_at":"2026-06-08T23:15:45+0900","rc":0}

## 2026-06-08T23:17:05+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-231645"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:17:08+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-231645","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:18:58+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-231838"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:19:01+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-231838","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:20:53+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-232031"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:20:55+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-232031","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:22:47+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-232226"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:22:49+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-232226","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:24:43+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":7,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-232420"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:24:45+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"7","trial_dir":"logs/trials/tb3-short-east-r2_20260608-232420","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:26:37+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-232615"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:26:39+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260608-232615","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:29:16+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":50,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-232810"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:29:19+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"50","trial_dir":"logs/trials/tb3-short-north-r1_20260608-232810","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:31:54+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-233049"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:31:57+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-233049","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:34:32+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-233327"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:34:35+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260608-233327","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":23,"started_at":"2026-06-08T23:16:45+0900","finished_at":"2026-06-08T23:36:05+0900","rc":0}

## 2026-06-08T23:37:22+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-233705"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:37:25+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-233705","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:39:17+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-233855"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:39:20+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-233855","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:41:11+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-234050"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:41:14+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260608-234050","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:43:05+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260608-234244"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:43:08+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260608-234244","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:45:01+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260608-234438"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:45:03+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260608-234438","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:46:51+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260608-234633"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:46:53+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r3_20260608-234633","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:48:42+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260608-234823"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:48:44+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/tb3-short-north-r1_20260608-234823","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:51:19+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260608-235014"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:51:21+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260608-235014","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:53:57+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260608-235251"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:54:00+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260608-235251","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":24,"started_at":"2026-06-08T23:37:05+0900","finished_at":"2026-06-08T23:55:30+0900","rc":0}

## 2026-06-08T23:56:50+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-235630"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:56:53+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260608-235630","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-08T23:58:41+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-235823"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-08T23:58:44+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r2_20260608-235823","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:00:34+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-000014"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:00:37+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-000014","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:02:29+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-000207"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:02:32+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-000207","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:04:19+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-000402"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:04:21+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r2_20260609-000402","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:06:14+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-000552"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:06:17+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-000552","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:08:51+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-000747"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:08:54+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-000747","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:11:28+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-001024"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:11:31+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-001024","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:14:05+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-001301"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:14:07+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-001301","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":25,"started_at":"2026-06-08T23:56:30+0900","finished_at":"2026-06-09T00:15:37+0900","rc":0}

## 2026-06-09T00:16:59+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-001638"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:17:01+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-001638","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:18:52+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-001832"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:18:55+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-001832","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:20:45+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-002025"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:20:48+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-002025","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:22:39+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-002218"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:22:42+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-002218","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:24:34+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-002412"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:24:37+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-002412","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:26:31+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-002607"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:26:34+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-002607","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:29:09+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-002804"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:29:12+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-002804","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:31:46+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-003042"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:31:49+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r2_20260609-003042","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:34:23+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-003319"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:34:26+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-003319","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":26,"started_at":"2026-06-09T00:16:37+0900","finished_at":"2026-06-09T00:35:56+0900","rc":0}

## 2026-06-09T00:37:17+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-003656"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:37:20+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-003656","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:39:11+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-003850"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:39:13+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-003850","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:41:04+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-004044"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:41:07+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-004044","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:42:58+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-004237"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:43:01+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-004237","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:44:52+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-004431"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:44:55+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-004431","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:46:48+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-004625"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:46:50+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-004625","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:49:27+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":50,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-004821"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:49:29+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"50","trial_dir":"logs/trials/tb3-short-north-r1_20260609-004821","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:52:04+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-005059"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:52:06+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-005059","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:54:42+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-005337"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:54:45+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260609-005337","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":27,"started_at":"2026-06-09T00:36:56+0900","finished_at":"2026-06-09T00:56:15+0900","rc":0}

## 2026-06-09T00:57:37+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-005715"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:57:39+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-005715","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T00:59:29+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-005909"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T00:59:32+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-005909","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:01:22+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-010102"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:01:25+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-010102","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:03:17+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-010255"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:03:19+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-010255","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:05:14+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-010449"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:05:16+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260609-010449","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:07:09+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-010647"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:07:12+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-010647","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:09:01+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-010842"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:09:04+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/tb3-short-north-r1_20260609-010842","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:11:39+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-011034"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:11:41+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260609-011034","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:13:29+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-011312"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:13:32+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r3_20260609-011312","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":28,"started_at":"2026-06-09T00:57:15+0900","finished_at":"2026-06-09T01:15:02+0900","rc":0}

## 2026-06-09T01:16:24+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-011602"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:16:26+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-011602","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:18:16+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-011757"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:18:19+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-011757","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:20:10+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-011949"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:20:13+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-011949","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:22:04+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-012143"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:22:07+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-012143","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:23:59+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-012337"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:24:02+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-012337","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:25:49+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-012532"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:25:52+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r3_20260609-012532","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:28:26+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-012722"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:28:29+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-012722","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:31:05+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-012959"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:31:08+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260609-012959","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:33:44+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-013238"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:33:46+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-013238","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":29,"started_at":"2026-06-09T01:16:02+0900","finished_at":"2026-06-09T01:35:16+0900","rc":0}

## 2026-06-09T01:36:37+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-013617"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:36:39+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-013617","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:38:29+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-013809"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:38:32+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-013809","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:40:22+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-014002"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:40:24+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-014002","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:42:17+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-014155"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:42:20+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-014155","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:44:11+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-014350"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:44:14+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-014350","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:46:02+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-014544"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:46:05+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r3_20260609-014544","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:48:41+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-014735"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:48:43+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-014735","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:51:17+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-015013"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:51:20+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-015013","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:53:54+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-015250"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:53:57+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-015250","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":30,"started_at":"2026-06-09T01:36:17+0900","finished_at":"2026-06-09T01:55:27+0900","rc":0}

## 2026-06-09T01:56:47+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-015627"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:56:50+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-015627","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T01:58:43+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-015820"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T01:58:46+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-015820","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:00:38+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-020016"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:00:40+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-020016","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:02:34+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-020211"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:02:36+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-020211","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:04:25+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-020406"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:04:28+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"3","trial_dir":"logs/trials/tb3-short-east-r2_20260609-020406","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:06:22+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-020558"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:06:24+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-020558","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:08:58+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-020754"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:09:01+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r1_20260609-020754","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:11:05+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":18,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-021031"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:11:08+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"18","trial_dir":"logs/trials/tb3-short-north-r2_20260609-021031","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:13:44+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-021238"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:13:47+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260609-021238","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":31,"started_at":"2026-06-09T01:56:27+0900","finished_at":"2026-06-09T02:15:17+0900","rc":0}

## 2026-06-09T02:16:38+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-021617"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:16:41+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-021617","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:18:31+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-021811"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:18:33+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-021811","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:20:24+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-022003"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:20:27+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-022003","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:22:19+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-022157"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:22:21+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-022157","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:24:14+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-022352"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:24:17+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-022352","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:26:09+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-022547"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:26:12+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-022547","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:28:10+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":12,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-022742"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:28:13+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"12","trial_dir":"logs/trials/tb3-short-north-r1_20260609-022742","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:30:49+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-022943"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:30:52+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260609-022943","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:33:29+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":50,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-023222"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:33:31+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"50","trial_dir":"logs/trials/tb3-short-north-r3_20260609-023222","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":32,"started_at":"2026-06-09T02:16:17+0900","finished_at":"2026-06-09T02:35:01+0900","rc":0}

## 2026-06-09T02:36:20+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-023602"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:36:23+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-023602","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:38:12+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-023753"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:38:15+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-023753","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:40:05+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-023945"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:40:08+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-023945","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:42:00+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-024138"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:42:03+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-024138","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:43:56+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-024333"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:43:59+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260609-024333","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:45:47+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-024529"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:45:50+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/tb3-short-east-r3_20260609-024529","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:48:24+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-024720"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:48:26+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-024720","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:51:01+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-024956"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:51:04+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-024956","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:53:39+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-025234"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:53:41+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260609-025234","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":33,"started_at":"2026-06-09T02:36:01+0900","finished_at":"2026-06-09T02:55:11+0900","rc":0}

## 2026-06-09T02:56:31+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-025612"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:56:34+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-025612","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T02:58:25+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-025804"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T02:58:28+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-025804","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:00:18+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-025958"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:00:21+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-025958","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:02:12+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-030151"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:02:14+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-030151","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:04:07+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-030344"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:04:10+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-030344","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:06:01+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-030540"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:06:04+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260609-030540","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:08:40+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-030734"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:08:43+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r1_20260609-030734","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:10:30+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-031013"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:10:33+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r2_20260609-031013","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:13:08+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-031203"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:13:11+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260609-031203","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":34,"started_at":"2026-06-09T02:56:11+0900","finished_at":"2026-06-09T03:14:41+0900","rc":0}

## 2026-06-09T03:16:01+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-031541"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:16:04+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-031541","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:17:56+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-031734"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:17:58+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-031734","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:19:48+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-031929"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:19:51+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-031929","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:21:43+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-032121"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:21:45+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-032121","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:23:37+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-032316"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:23:40+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/tb3-short-east-r2_20260609-032316","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:25:29+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-032510"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:25:31+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r3_20260609-032510","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:28:06+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-032701"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:28:09+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-032701","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:30:44+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-032939"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:30:47+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r2_20260609-032939","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:33:21+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-033217"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:33:24+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-033217","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":35,"started_at":"2026-06-09T03:15:41+0900","finished_at":"2026-06-09T03:34:54+0900","rc":0}

## 2026-06-09T03:36:12+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-033554"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:36:14+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-033554","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:38:05+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-033745"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:38:08+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-033745","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:39:56+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-033938"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:39:59+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-033938","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:41:51+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-034129"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:41:54+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-034129","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:43:47+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-034324"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:43:50+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-034324","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:45:42+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-034520"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:45:45+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-034520","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:48:20+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-034715"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:48:23+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r1_20260609-034715","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:50:58+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-034953"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:51:01+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-034953","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:52:49+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-035231"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:52:51+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r3_20260609-035231","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":36,"started_at":"2026-06-09T03:35:54+0900","finished_at":"2026-06-09T03:54:21+0900","rc":0}

## 2026-06-09T03:55:42+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-035522"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:55:45+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-035522","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:57:37+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-035715"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:57:39+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-035715","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T03:59:30+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-035909"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T03:59:33+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-035909","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:01:26+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-040103"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:01:28+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-040103","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:03:21+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-040259"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:03:24+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-040259","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:05:15+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-040454"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:05:18+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260609-040454","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:07:53+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-040648"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:07:55+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-040648","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:10:30+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-040926"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:10:32+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-040926","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:12:20+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-041203"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:12:23+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r3_20260609-041203","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":37,"started_at":"2026-06-09T03:55:21+0900","finished_at":"2026-06-09T04:13:53+0900","rc":0}

## 2026-06-09T04:15:13+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-041453"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:15:16+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-041453","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:17:05+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-041646"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:17:08+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-041646","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:18:56+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-041838"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:18:59+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-041838","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:20:46+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-042029"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:20:48+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r1_20260609-042029","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:22:36+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-042218"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:22:38+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r2_20260609-042218","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:24:33+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-042409"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:24:35+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-042409","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:27:10+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-042605"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:27:12+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-042605","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:29:46+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-042843"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:29:49+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r2_20260609-042843","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:32:26+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-043119"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:32:29+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260609-043119","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":38,"started_at":"2026-06-09T04:14:53+0900","finished_at":"2026-06-09T04:33:59+0900","rc":0}

## 2026-06-09T04:35:17+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-043459"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:35:20+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-043459","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:37:10+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-043650"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:37:13+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-043650","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:39:04+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-043843"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:39:07+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-043843","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:40:59+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-044037"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:41:02+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-044037","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:42:54+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-044232"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:42:57+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-044232","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:44:48+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-044427"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:44:51+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260609-044427","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:47:27+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-044621"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:47:30+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r1_20260609-044621","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:50:04+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-044900"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:50:07+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-044900","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:52:32+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":38,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-045137"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:52:35+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"38","trial_dir":"logs/trials/tb3-short-north-r3_20260609-045137","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":39,"started_at":"2026-06-09T04:34:59+0900","finished_at":"2026-06-09T04:54:05+0900","rc":0}

## 2026-06-09T04:55:27+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-045505"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:55:30+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-045505","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:57:19+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-045700"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:57:21+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-045700","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T04:59:13+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-045851"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T04:59:15+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-045851","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:01:07+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-050045"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:01:10+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-050045","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:03:01+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-050240"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:03:04+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-050240","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:04:51+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-050434"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:04:54+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r3_20260609-050434","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:07:28+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-050624"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:07:31+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-050624","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:10:07+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-050901"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:10:09+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-050901","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:12:45+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":50,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-051139"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:12:48+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"50","trial_dir":"logs/trials/tb3-short-north-r3_20260609-051139","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":40,"started_at":"2026-06-09T04:55:05+0900","finished_at":"2026-06-09T05:14:18+0900","rc":0}

## 2026-06-09T05:15:38+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-051518"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:15:40+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-051518","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:17:31+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-051711"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:17:34+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-051711","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:19:24+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-051904"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:19:26+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-051904","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:21:15+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-052056"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:21:18+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r1_20260609-052056","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:23:10+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-052248"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:23:13+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260609-052248","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:25:04+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-052443"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:25:07+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260609-052443","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:27:42+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-052637"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:27:45+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-052637","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:30:20+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-052915"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:30:23+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-052915","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:32:57+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-053153"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:33:00+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-053153","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":41,"started_at":"2026-06-09T05:15:18+0900","finished_at":"2026-06-09T05:34:30+0900","rc":0}

## 2026-06-09T05:35:50+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-053530"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:35:53+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-053530","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:37:43+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-053723"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:37:46+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-053723","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:39:36+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-053916"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:39:39+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-053916","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:41:31+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-054109"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:41:33+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-054109","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:43:21+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-054303"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:43:23+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r2_20260609-054303","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:45:16+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-054453"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:45:19+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260609-054453","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:47:53+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-054649"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:47:56+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-054649","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:50:30+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-054926"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:50:33+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-054926","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:53:08+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-055203"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:53:11+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-055203","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":42,"started_at":"2026-06-09T05:35:30+0900","finished_at":"2026-06-09T05:54:41+0900","rc":0}

## 2026-06-09T05:56:02+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-055541"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:56:04+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-055541","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:57:54+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-055735"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:57:57+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-055735","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T05:59:47+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-055927"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T05:59:50+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-055927","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:01:42+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-060120"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:01:44+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-060120","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:03:36+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-060315"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:03:39+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260609-060315","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:05:29+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-060509"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:05:32+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/tb3-short-east-r3_20260609-060509","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:07:20+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-060702"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:07:22+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/tb3-short-north-r1_20260609-060702","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:09:58+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-060852"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:10:01+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-060852","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:12:36+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-061131"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:12:39+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-061131","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":43,"started_at":"2026-06-09T05:55:41+0900","finished_at":"2026-06-09T06:14:09+0900","rc":0}

## 2026-06-09T06:15:29+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-061509"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:15:31+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-061509","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:17:21+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-061701"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:17:24+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-061701","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:19:14+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-061854"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:19:16+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-061854","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:21:04+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-062047"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:21:07+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r1_20260609-062047","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:22:58+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-062237"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:23:01+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/tb3-short-east-r2_20260609-062237","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:24:50+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-062431"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:24:53+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r3_20260609-062431","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:27:29+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-062623"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:27:32+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-062623","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:30:08+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-062902"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:30:11+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-062902","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:32:45+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-063141"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:32:48+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-063141","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":44,"started_at":"2026-06-09T06:15:09+0900","finished_at":"2026-06-09T06:34:18+0900","rc":0}

## 2026-06-09T06:35:39+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-063518"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:35:41+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-063518","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:37:33+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-063711"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:37:35+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-063711","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:39:27+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-063905"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:39:30+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-063905","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:41:21+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-064100"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:41:24+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-064100","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:43:15+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-064254"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:43:18+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-064254","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:45:11+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-064448"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:45:14+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-064448","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:47:49+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-064644"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:47:52+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-064644","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:49:41+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-064922"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:49:44+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-north-r2_20260609-064922","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:52:18+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":49,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-065114"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:52:21+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"49","trial_dir":"logs/trials/tb3-short-north-r3_20260609-065114","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":45,"started_at":"2026-06-09T06:35:18+0900","finished_at":"2026-06-09T06:53:51+0900","rc":0}

## 2026-06-09T06:55:11+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-065451"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:55:14+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-065451","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:57:02+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":2,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-065644"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:57:05+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"2","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-065644","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T06:58:55+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-065835"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T06:58:58+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-065835","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:00:50+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-070028"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:00:52+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r1_20260609-070028","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:02:44+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-070222"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:02:47+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r2_20260609-070222","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:04:39+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-070417"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:04:42+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260609-070417","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:07:16+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-070612"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:07:19+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-070612","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:09:54+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-070849"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:09:57+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-070849","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:12:32+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-071127"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:12:34+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-071127","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":46,"started_at":"2026-06-09T06:54:51+0900","finished_at":"2026-06-09T07:14:04+0900","rc":0}

## 2026-06-09T07:15:26+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-071505"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:15:29+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-071505","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:17:17+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-071659"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:17:20+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-071659","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:19:10+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-071850"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:19:13+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-071850","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:21:00+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-072043"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:21:03+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/tb3-short-east-r1_20260609-072043","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:22:54+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-072233"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:22:57+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-072233","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:24:49+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-072427"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:24:51+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-072427","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:27:25+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-072622"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:27:28+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r1_20260609-072622","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:30:03+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-072858"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:30:06+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r2_20260609-072858","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:32:40+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-073136"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:32:42+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-073136","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":47,"started_at":"2026-06-09T07:15:04+0900","finished_at":"2026-06-09T07:34:12+0900","rc":0}

## 2026-06-09T07:35:30+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":1,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-073513"}
- conclusion: Nav2 trial completed with status failed_goal_rc_0.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:35:33+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: failed_goal_rc_0
- metrics: {"success":false,"duration_sec":"1","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-073513","runner_rc":4}
- conclusion: Repeated Nav2 batch trial completed with status failed_goal_rc_0.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:37:22+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-073703"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:37:25+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-073703","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:39:18+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-073855"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:39:21+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-073855","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:41:12+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-074051"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:41:15+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-074051","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:43:06+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-074245"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:43:09+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-074245","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:45:01+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":6,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-074439"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:45:04+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"6","trial_dir":"logs/trials/tb3-short-east-r3_20260609-074439","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:47:39+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r1_20260609-074634"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:47:41+09:00 run=tb3-short-north-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r1_20260609-074634","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:50:16+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":47,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r2_20260609-074912"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:50:18+09:00 run=tb3-short-north-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"47","trial_dir":"logs/trials/tb3-short-north-r2_20260609-074912","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:52:54+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":48,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-north-r3_20260609-075148"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:52:57+09:00 run=tb3-short-north-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-1.0,0.0
- goal_pose: -2.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"48","trial_dir":"logs/trials/tb3-short-north-r3_20260609-075148","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
---
{"type":"continuous_batch","loop":48,"started_at":"2026-06-09T07:35:12+0900","finished_at":"2026-06-09T07:54:27+0900","rc":0}

## 2026-06-09T07:55:48+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-075527"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:55:51+09:00 run=smoke-003-repeat-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r1_20260609-075527","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:57:42+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":4,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-075721"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:57:44+09:00 run=smoke-003-repeat-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"4","trial_dir":"logs/trials/smoke-003-repeat-r2_20260609-075721","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T07:59:34+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":3,"goal_return_code":0,"trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-075914"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T07:59:37+09:00 run=smoke-003-repeat-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -1.0,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"3","trial_dir":"logs/trials/smoke-003-repeat-r3_20260609-075914","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T08:01:28+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r1_20260609-080107"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T08:01:31+09:00 run=tb3-short-east-r1

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r1_20260609-080107","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T08:03:23+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r2_20260609-080301"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T08:03:26+09:00 run=tb3-short-east-r2

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r2_20260609-080301","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.

## 2026-06-09T08:05:18+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":5,"goal_return_code":0,"trial_dir":"logs/trials/tb3-short-east-r3_20260609-080456"}
- conclusion: Nav2 trial completed with status success.
- next_action: Parse path and recovery metrics from ROS topics/logs, then add repeated trial matrix execution.

## 2026-06-09T08:05:20+09:00 run=tb3-short-east-r3

- lane: known_environment_optimization
- environment_id: tb3_sandbox
- parameter_set_id: baseline
- robot_model: turtlebot3_waffle
- start_pose: -2.0,-0.5,0.0
- goal_pose: -0.5,-0.5,0.0
- status: success
- metrics: {"success":true,"duration_sec":"5","trial_dir":"logs/trials/tb3-short-east-r3_20260609-080456","runner_rc":0}
- conclusion: Repeated Nav2 batch trial completed with status success.
- next_action: Compare benchmark_results.csv against baseline and expand the trial matrix.
