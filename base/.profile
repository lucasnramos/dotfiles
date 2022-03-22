# Main variables
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export TERM="xterm-256color"
export SCRIPTS="$HOME/.local/bin"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Android SDK and Studio
export ANDROID_BASE="$HOME/.local/android"
export ANDROID_HOME="$ANDROID_BASE/sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_STUDIO="$ANDROID_BASE/studio/bin"

export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

# set PATH so it includes user's private bin directories
PATH="$SCRIPTS:$HOME/bin:$ANDROID_STUDIO:$HOME/.nvm:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$JAVA_HOME/bin:$JAVA_HOME/lib/amd64:$PATH"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
