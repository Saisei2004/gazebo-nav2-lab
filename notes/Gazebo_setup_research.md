# Gazebo Setup Research

Checked on 2026-06-02.

## DGX Host

- Ubuntu 24.04.3 LTS Noble
- arm64
- `gz`, `gazebo`, `ros2`, and `colcon` were not installed before setup.
- `sudo -n true` fails, so package installation needs an interactive sudo password.

## Version Choice

Gazebo Harmonic is the first target for this lab because:

- Gazebo Harmonic binary packages are documented for Ubuntu 24.04 Noble.
- Gazebo's getting-started documentation lists Gazebo Harmonic as the recommended pairing when using ROS 2 Jazzy.
- ROS 2 Jazzy documentation recommends Gazebo Harmonic for Jazzy-era integration.

Ubuntu 24.04 also supports newer Gazebo releases, but Harmonic is the safer base if the next step is ROS 2 Jazzy integration.

## Sources

- Gazebo Harmonic Ubuntu install: https://gazebosim.org/docs/harmonic/install_ubuntu/
- Gazebo Harmonic release/install notes: https://gazebosim.org/docs/harmonic/install
- Gazebo getting started version table: https://gazebosim.org/docs/harmonic/getstarted/
- ROS 2 Jazzy release notes: https://docs.ros.org/en/ros2_documentation/rolling/Releases/Release-Jazzy-Jalisco.html
