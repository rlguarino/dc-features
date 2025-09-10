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

mise dr

echo -e "The result of the 'mise version' command will be:\n"
mise version
echo -e "\n"
echo $SHELL
echo -e "Env:"
env
echo -e "\n"
echo -e "The result of the 'go version' command will be:\n"
go version
echo -e "\n"

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "check mise version" bash -c "mise version | grep '2025.9.7'"
check "check mise version" go version

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
