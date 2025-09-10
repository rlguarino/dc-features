#!/bin/sh
set -e

echo "Installing go"

env
cd $_REMOTE_USER_HOME
sudo -u $_REMOTE_USER /usr/local/bin/mise use -g go
# sudo -u $_REMOTE_USER /usr/local/bin/mise dr

# sudo -u $_REMOTE_USER 'eval "$(mise activate bash)"; go version'
echo 'eval "$(mise activate bash)"' >> $_REMOTE_USER_HOME/.bash_profile
chown $_REMOTE_USER:$_REMOTE_USER $_REMOTE_USER_HOME/.bash_profile
# sudo -u $_REMOTE_USER go  version