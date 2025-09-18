#!/bin/sh
set -e
TARGET_GO_VERSION="${VERSION:-"latest"}"

echo "Installing Jujutsu (${TARGET_GO_VERSION})"

cd $_REMOTE_USER_HOME
sudo -u $_REMOTE_USER mise use -g jj@${TARGET_GO_VERSION}