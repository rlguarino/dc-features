#!/bin/sh
set -e
TARGET_CLAUDE_CODE_VERSION="${VERSION:-"latest"}"

echo "Installing Claude Code (${TARGET_CLAUDE_CODE_VERSION})"

cd $_REMOTE_USER_HOME
sudo -u $_REMOTE_USER mise use -g node
sudo -u $_REMOTE_USER mise use -g npm:@anthropic-ai/claude-code@${TARGET_CLAUDE_CODE_VERSION}

sudo -u $_REMOTE_USER -- bash --login -c 'claude -v'