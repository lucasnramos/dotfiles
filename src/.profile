# Shell Variables
export EDITOR="nvim"
export VISUAL="emacs"
export TERMINAL="urxvt"
export BROWSER="firefox"
export SCRIPTS="$HOME/.scripts"
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_STUDIO="$HOME/Android/studio/bin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk/"

# set PATH so it includes user's private bin directories
PATH="/snap/bin/:$SCRIPTS:$HOME/bin:$ANDROID_STUDIO:$HOME/.local/bin:$HOME/.nvm:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$JAVA_HOME/bin:$JAVA_HOME/lib/amd64:$PATH"
