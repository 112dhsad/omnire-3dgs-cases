#!/usr/bin/env bash
set -euo pipefail

# Run this script from the root of the official DriveStudio repository.
# Override the defaults by exporting variables before execution, for example:
#   SCENE_IDX=3 DATASET=waymo/5cams bash /path/to/run_omnire.sh

OUTPUT_ROOT="${OUTPUT_ROOT:-logs/omnire_waymo}"
PROJECT="${PROJECT:-recon}"
RUN_NAME="${RUN_NAME:-scene_000}"
DATASET="${DATASET:-waymo/3cams}"
SCENE_IDX="${SCENE_IDX:-0}"
START_TIMESTEP="${START_TIMESTEP:-0}"
END_TIMESTEP="${END_TIMESTEP:--1}"

export PYTHONPATH="$(pwd)"

python tools/train.py \
  --config_file configs/omnire.yaml \
  --output_root "${OUTPUT_ROOT}" \
  --project "${PROJECT}" \
  --run_name "${RUN_NAME}" \
  "dataset=${DATASET}" \
  "data.scene_idx=${SCENE_IDX}" \
  "data.start_timestep=${START_TIMESTEP}" \
  "data.end_timestep=${END_TIMESTEP}"
