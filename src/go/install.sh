#!/bin/sh
set -e
TARGET_GO_VERSION="${VERSION:-"latest"}"

echo "Installing go (${TARGET_GO_VERSION})"

cd $_REMOTE_USER_HOME
sudo -u $_REMOTE_USER mise use -g go@${TARGET_GO_VERSION}

echo "Done installing go"