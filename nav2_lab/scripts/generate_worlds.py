#!/usr/bin/env python3
"""Generate deterministic Gazebo Harmonic SDF worlds for Nav2 experiments."""

from __future__ import annotations

import argparse
import math
import random
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
WORLDS = ROOT / "worlds"


def box_model(name: str, x: float, y: float, sx: float, sy: float, height: float = 1.0) -> str:
    return f"""
    <model name="{name}">
      <static>true</static>
      <pose>{x:.3f} {y:.3f} {height / 2:.3f} 0 0 0</pose>
      <link name="link">
        <collision name="collision">
          <geometry><box><size>{sx:.3f} {sy:.3f} {height:.3f}</size></box></geometry>
        </collision>
        <visual name="visual">
          <geometry><box><size>{sx:.3f} {sy:.3f} {height:.3f}</size></box></geometry>
          <material><ambient>0.45 0.48 0.50 1</ambient><diffuse>0.45 0.48 0.50 1</diffuse></material>
        </visual>
      </link>
    </model>"""


def base_world(name: str, obstacles: list[str]) -> str:
    return f"""<?xml version="1.0" ?>
<sdf version="1.10">
  <world name="{name}">
    <physics name="1ms" type="ignored">
      <max_step_size>0.001</max_step_size>
      <real_time_factor>1.0</real_time_factor>
    </physics>
    <plugin filename="gz-sim-physics-system" name="gz::sim::systems::Physics"/>
    <plugin filename="gz-sim-user-commands-system" name="gz::sim::systems::UserCommands"/>
    <plugin filename="gz-sim-scene-broadcaster-system" name="gz::sim::systems::SceneBroadcaster"/>
    <light name="sun" type="directional">
      <pose>0 0 10 0 0 0</pose>
      <diffuse>0.8 0.8 0.8 1</diffuse>
      <specular>0.2 0.2 0.2 1</specular>
      <direction>-0.5 0.1 -0.9</direction>
    </light>
    <model name="ground_plane">
      <static>true</static>
      <link name="link">
        <collision name="collision"><geometry><plane><normal>0 0 1</normal><size>30 30</size></plane></geometry></collision>
        <visual name="visual"><geometry><plane><normal>0 0 1</normal><size>30 30</size></plane></geometry></visual>
      </link>
    </model>
{''.join(obstacles)}
  </world>
</sdf>
"""


def known_warehouse() -> str:
    obstacles = []
    for i, y in enumerate([-5.5, -2.5, 0.0, 2.5, 5.5]):
        obstacles.append(box_model(f"shelf_left_{i}", -4.0, y, 0.7, 1.7))
        obstacles.append(box_model(f"shelf_right_{i}", 4.0, y, 0.7, 1.7))
    obstacles.append(box_model("center_island", 0.0, 0.0, 1.2, 2.4))
    return base_world("warehouse_small", obstacles)


def known_corridors() -> str:
    obstacles = [
        box_model("wall_north", 0, 7, 14, 0.35),
        box_model("wall_south", 0, -7, 14, 0.35),
        box_model("wall_west", -7, 0, 0.35, 14),
        box_model("wall_east", 7, 0, 0.35, 14),
    ]
    for x in [-3.5, 0, 3.5]:
        obstacles.append(box_model(f"vertical_partition_{x}", x, 0, 0.35, 9.0))
    for y in [-3.0, 3.0]:
        obstacles.append(box_model(f"horizontal_partition_{y}", 0, y, 10.0, 0.35))
    return base_world("narrow_corridors", obstacles)


def random_blocks(seed: int, count: int = 20) -> str:
    rng = random.Random(seed)
    obstacles = [
        box_model("boundary_north", 0, 8, 16, 0.35),
        box_model("boundary_south", 0, -8, 16, 0.35),
        box_model("boundary_west", -8, 0, 0.35, 16),
        box_model("boundary_east", 8, 0, 0.35, 16),
    ]
    for i in range(count):
        radius = rng.uniform(1.5, 7.0)
        theta = rng.uniform(0, math.tau)
        x = radius * math.cos(theta)
        y = radius * math.sin(theta)
        sx = rng.uniform(0.4, 1.5)
        sy = rng.uniform(0.4, 1.8)
        obstacles.append(box_model(f"block_{seed}_{i}", x, y, sx, sy))
    return base_world(f"random_blocks_{seed}", obstacles)


def write_world(path: Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")
    print(f"wrote {path}")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--all", action="store_true")
    parser.add_argument("--random-seeds", default="1,2,3,4,5")
    args = parser.parse_args()

    if not args.all:
        parser.error("Use --all for now")

    write_world(WORLDS / "known_warehouse_small.sdf", known_warehouse())
    write_world(WORLDS / "known_narrow_corridors.sdf", known_corridors())

    for seed_text in args.random_seeds.split(","):
        seed = int(seed_text.strip())
        write_world(WORLDS / f"unknown_random_blocks_{seed:03d}.sdf", random_blocks(seed))

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
