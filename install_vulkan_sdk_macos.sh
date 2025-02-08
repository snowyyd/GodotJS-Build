#!/usr/bin/env sh

set -euo pipefail
IFS=$'\n\t'

# # Download and install the Vulkan SDK. (1.4.304.1)
# curl -L "https://sdk.lunarg.com/sdk/download/1.4.304.1/mac/vulkansdk-macos-1.4.304.1.zip" -o /tmp/vulkan-sdk.zip
# unzip /tmp/vulkan-sdk.zip -d /tmp
# /tmp/InstallVulkan-1.4.304.1.app/Contents/MacOS/InstallVulkan-1.4.304.1 \
#     --accept-licenses --default-answer --confirm-command install
# rm -rf /tmp/InstallVulkan-1.4.304.1.app

# Download and install the Vulkan SDK. (1.4.304.0)
curl -L "https://vulkan.lunarg.com/sdk/download/1.4.304.0/mac/vulkansdk-macos-1.4.304.0.zip" -o /tmp/vulkan-sdk.zip
unzip /tmp/vulkan-sdk.zip -d /tmp
/tmp/InstallVulkan.app/Contents/MacOS/InstallVulkan \
    --accept-licenses --default-answer --confirm-command install
rm -rf /tmp/InstallVulkan.app


rm -f /tmp/vulkan-sdk.zip
echo 'Vulkan SDK installed successfully! You can now build Godot by running "scons".'
