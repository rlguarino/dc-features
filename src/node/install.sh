#!/bin/sh
set -e
TARGET_NODE_VERSION="${VERSION:-"latest"}"

echo "Installing Node version=${TARGET_NODE_VERSION}, via Mise"

cd $_REMOTE_USER_HOME
sudo -u $_REMOTE_USER mise use -g node@${TARGET_NODE_VERSION}