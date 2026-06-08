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
