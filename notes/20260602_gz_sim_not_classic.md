# Gz Sim, Not Gazebo Classic

This lab targets Gazebo Harmonic, which uses the modern `gz` command family.

Use:

```bash
gz sim -s -r worlds/saisei_empty.sdf
```

Do not use Gazebo Classic commands such as:

```bash
gazebo --headless
```

Those commands belong to the older Gazebo Classic line and can lead the agent into building the wrong environment. The DGX currently does not have `gz` installed, so verification should fail clearly until `./install_gazebo_harmonic.sh` is run by a human with sudo.
