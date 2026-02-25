#!/usr/bin/env bash
# install_all.sh
set -e

VENV_DIR=${1:-"ansible_venv"}

echo "================================================="
echo " Starting Ansible Installation Process"
echo "================================================="

# Ensure all scripts are executable
chmod +x 01_install_os_deps.sh 02_setup_venv.sh 03_install_ansible.sh

# Run the scripts sequentially
./01_install_os_deps.sh
./02_setup_venv.sh "$VENV_DIR"
./03_install_ansible.sh "$VENV_DIR"

echo "================================================="
echo " Installation Complete! "
echo "================================================="
echo "Ansible has been safely installed in a virtual environment."
echo ""
echo "To start using Ansible, activate the environment by running:"
echo "  source $VENV_DIR/bin/activate"
echo ""
echo "When you are done, simply type 'deactivate'."

#!/usr/bin/env bash
# install_all.sh
set -e

VENV_DIR=${1:-"ansible_venv"}

echo "================================================="
echo " Starting Ansible Installation Process"
echo "================================================="

# Ensure all scripts are executable
chmod +x 01_install_os_deps.sh 02_setup_venv.sh 03_install_ansible.sh 04_create_shortcut.sh

# Run the scripts sequentially
./01_install_os_deps.sh
./02_setup_venv.sh "$VENV_DIR"
./03_install_ansible.sh "$VENV_DIR"
./04_create_shortcut.sh "$VENV_DIR"

echo "================================================="
echo " Installation Complete! "
echo "================================================="
echo "Ansible has been safely installed in a virtual environment."
echo ""
echo "To start using Ansible, activate the environment by running:"
echo "  source $VENV_DIR/bin/activate"
echo ""
echo "Alternatively, to use your new shortcut right now in this terminal, run:"
echo "  source ~/.bashrc"
echo ""
echo "After that, simply type the following to activate Ansible:"
echo "  ansible-env"
echo ""
echo "When you are done using Ansible, just type 'deactivate'."