#!/usr/bin/env bash

# This script runs upon creation of the devcontainer. It configures the python virtual
# environment and installs poetry dependencies.

poetry env use $(pyenv which python3 -v ${containerEnv:PYTHON_VERSION})
poetry install --no-root --sync
