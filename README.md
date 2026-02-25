# ansible-core-setup-for-linux
This repo allows you to easily get Ansible core installed and running on your linux environment so you can utilize my 
other Ansible based automation repos.

# Ansible Automated Installation Scripts

This repository contains a set of modular shell scripts designed to install [Ansible](https://www.ansible.com/) and its 
required Python prerequisites on a Linux system.

To prevent package conflicts with your host OS, this installation process uses a **Python Virtual Environment**.

## Files Included

* `01_install_os_deps.sh`: Detects your OS package manager (`apt`, `dnf`, or `yum`) and installs `python3`, `pip`, and `venv`.
* `02_setup_venv.sh`: Creates an isolated Python virtual environment.
* `03_install_ansible.sh`: Activates the virtual environment, updates Python build prerequisites (`pip`, `setuptools`, `wheel`), and installs Ansible.
* `install_all.sh`: The master script that executes the modular components in the correct order.

## Prerequisites

* A Linux-based operating system (Debian/Ubuntu, RHEL/CentOS/Fedora).
* A user account with `sudo` privileges (required for step 1 to install base OS packages).

## How to Run

1. Clone or download these scripts into a directory on your Linux machine.
2. Open a terminal and navigate to that directory.
3. Make the top-level script executable:
   ```bash
   chmod +x install_all.sh
   ```
4. Run the master script. You can optionally provide a custom name for your virtual environment folder. 
   If you don't provide one, it will default to ansible_venv.

   Default Installation:

   ```bash
   ./install_all.sh
   ```
   Custom Directory Installation:

   ```bash
   ./install_all.sh my_custom_ansible_env
   ```
   > **Note:** You may be prompted for your password during execution to install the system-level Python packages via sudo.

## Post-Installation
Because Ansible is installed inside a virtual environment, you need to activate it before running Ansible commands 
(ansible, ansible-playbook, etc.).

To activate the environment:

```bash 
source ansible_venv/bin/activate
```
(Replace ansible_venv with your custom directory name if you provided one).

You will know it is active because your terminal prompt will change to include (ansible_venv). 

Alternatively, you can use a shortcut command to activate the virtual environment. If you want to use the shortcut 
immediately in your current window, reload your profile:
```bash
source ~/.bashrc
```

Then you can run the custom command:
```bash
ansible-env
```

To exit the environment when you are finished, simply type:
```bash
deactivate
```