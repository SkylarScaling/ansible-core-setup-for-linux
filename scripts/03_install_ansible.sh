#!/usr/bin/env bash
# 03_install_ansible.sh
set -e

VENV_DIR=${1:-"ansible_venv"}

echo "=> Step 3: Installing Python prerequisites and Ansible in $VENV_DIR..."

# Activate the virtual environment
source "$VENV_DIR/bin/activate"

# Upgrade pip and install essential Python build prerequisites
echo "Upgrading pip, setuptools, and wheel..."
pip install --upgrade pip setuptools wheel

# Install Ansible
echo "Installing Ansible..."
pip install ansible

echo "=> Ansible installed successfully."
echo "=> Verifying installation:"
ansible --version

# Deactivate to return to normal shell state for the script runner
deactivate