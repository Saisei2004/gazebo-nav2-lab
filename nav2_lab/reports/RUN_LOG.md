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
