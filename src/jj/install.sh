#!/bin/sh
set -e
TARGET_JJ_VERSION="${VERSION:-"latest"}"

echo "Installing Jujutsu (${TARGET_JJ_VERSION})"

cd $_REMOTE_USER_HOME
sudo -u $_REMOTE_USER mise use -g jj@${TARGET_JJ_VERSION}

echo "Done installing jj"