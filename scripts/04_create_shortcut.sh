#!/usr/bin/env bash
# 04_create_shortcut.sh
set -e

VENV_DIR=${1:-"ansible_venv"}

# Get the absolute path of the virtual environment
VENV_ABS_PATH="$(pwd)/$VENV_DIR"
BASHRC_FILE="$HOME/.bashrc"

ALIAS_CMD="alias ansible-env='source $VENV_ABS_PATH/bin/activate'"

echo "=> Step 4: Creating shortcut command 'ansible-env'..."

# Check if the alias already exists to avoid duplicates
if grep -q "alias ansible-env=" "$BASHRC_FILE"; then
    echo "Shortcut 'ansible-env' already exists in $BASHRC_FILE. Updating..."
    # Replace the existing line
    sed -i "s|alias ansible-env=.*|$ALIAS_CMD|" "$BASHRC_FILE"
else
    # Append the new alias
    echo "" >> "$BASHRC_FILE"
    echo "# Ansible Virtual Environment Shortcut" >> "$BASHRC_FILE"
    echo "$ALIAS_CMD" >> "$BASHRC_FILE"
fi

echo "=> Shortcut created successfully."