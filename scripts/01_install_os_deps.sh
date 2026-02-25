#!/usr/bin/env bash
# 01_install_os_deps.sh
set -e

echo "=> Step 1: Installing OS dependencies (Python3, pip, venv)..."

if command -v apt-get &> /dev/null; then
    echo "Detected apt-get (Debian/Ubuntu based)..."
    sudo apt-get update
    sudo apt-get install -y python3 python3-pip python3-venv
elif command -v dnf &> /dev/null; then
    echo "Detected dnf (Fedora/RHEL 8+ based)..."
    sudo dnf install -y python3 python3-pip
elif command -v yum &> /dev/null; then
    echo "Detected yum (CentOS/RHEL 7 based)..."
    sudo yum install -y python3 python3-pip
else
    echo "Error: Unsupported package manager. Please install Python3 manually."
    exit 1
fi

echo "=> OS dependencies installed successfully."