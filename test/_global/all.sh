#!/bin/bash

# The 'test/_global' folder is a special test folder that is not tied to a single feature.
#
# This test file is executed against a running container constructed
# from the value of 'color_and_hello' in the tests/_global/scenarios.json file.
#
# The value of a scenarios element is any properties available in the 'devcontainer.json'.
# Scenarios are useful for testing specific options in a feature, or to test a combination of features.
# 
# This test can be run with the following command (from the root of this repo)
#    devcontainer features test --global-scenarios-only .

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib
mise doctor

echo -e "The result of the 'claude -v' command will be:\n"
claude -v
echo -e "\n"

echo -e "The result of the 'go version' command will be:\n"
go version
echo -e "\n"

echo -e "The result of the 'mise version' command will be:\n"
mise version
echo -e "\n"

echo -e "The result of the 'node -v' command will be:\n"
node -v
echo -e "\n"

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "check claude -v" claude -v
check "check go version" go version
check "check mise version" mise version
check "check node version" node -v

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
