#!/bin/sh

# Main variables
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
export TERM="xterm-256color"
export SCRIPTS="$HOME/.local/bin"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

# Android SDK and Studio
export ANDROID_BASE="$HOME/.local/android"
export ANDROID_HOME="$ANDROID_BASE/sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_STUDIO="$ANDROID_BASE/studio/bin"
# export JAVA_HOME="/usr/lib/jvm/java-8-openjdk/" comment if using asdf

# XDG directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# set PATH so it includes user's private bin directories
PATH="$SCRIPTS:$HOME/bin:$ANDROID_STUDIO:$HOME/.nvm:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$JAVA_HOME/bin:$JAVA_HOME/lib/amd64:$PATH"


