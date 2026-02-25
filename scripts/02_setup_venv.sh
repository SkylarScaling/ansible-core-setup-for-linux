#!/usr/bin/env bash
# 02_setup_venv.sh
set -e

VENV_DIR=${1:-"ansible_venv"}

echo "=> Step 2: Setting up Python Virtual Environment in directory: $VENV_DIR..."

if [ -d "$VENV_DIR" ]; then
    echo "Virtual environment already exists at $VENV_DIR. Skipping creation."
else
    python3 -m venv "$VENV_DIR"
    echo "=> Virtual Environment created at $VENV_DIR."
fi