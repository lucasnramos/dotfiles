#!/bin/sh

# Main variables
export ALIASES="$HOME/.config/aliases"
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export FILEMANAGER="nnn"
export GFM="nautilus"
export BROWSER="firefox"
# export SCRIPTS=$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"$HOME/.local/scripts"
export SCRIPTS=$(du "$HOME/.local/scripts" | cut -f2 | paste -sd ':')
export APPIMAGEDIR="$HOME/.local/AppImages"

# Android SDK and Studio
export ANDROID_BASE="$HOME/.local/Android"
export ANDROID_HOME="$ANDROID_BASE/Sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_STUDIO="$ANDROID_BASE/studio/bin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk/"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
#export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.
#export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"

# set PATH so it includes user's private bin directories
PATH="$APPIMAGEDIR:/snap/bin/:$SCRIPTS:$HOME/bin:$ANDROID_STUDIO:$HOME/.local/bin:$HOME/.nvm:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$JAVA_HOME/bin:$JAVA_HOME/lib/amd64:$PATH"


