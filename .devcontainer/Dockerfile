FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install required packages
RUN apt-get update && apt-get install -y wget unzip git curl

# Install Android SDK command-line tools
RUN mkdir -p /usr/local/android-sdk/cmdline-tools
WORKDIR /usr/local/android-sdk/cmdline-tools

RUN wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -O tools.zip \
    && unzip tools.zip \
    && rm tools.zip

ENV ANDROID_HOME=/usr/local/android-sdk
ENV PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator

COPY setup-android.sh /usr/local/bin/setup-android.sh
RUN chmod +x /usr/local/bin/setup-android.sh
