#!/usr/bin/env bash

set -eEuo pipefail

wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
python3 -m pip install qmk
rm get-pip.py

python3 -m pip install --upgrade milc

git config --global --add safe.directory /workspaces/qmk_userspace
git submodule update --init --recursive

# Use the ZSA fork of QMK checked out as a submodule of this repository.
git config --global --add safe.directory /workspaces/qmk_userspace/qmk_firmware

qmk config user.qmk_home=/workspaces/qmk_userspace/qmk_firmware
qmk config user.overlay_dir=/workspaces/qmk_userspace

qmk git-submodule
