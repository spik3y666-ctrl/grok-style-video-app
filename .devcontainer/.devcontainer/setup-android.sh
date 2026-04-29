#!/bin/bash

yes | sdkmanager --licenses

sdkmanager "platform-tools" \
           "platforms;android-34" \
           "build-tools;34.0.0" \
           "cmdline-tools;latest"

echo "Android SDK installed."
