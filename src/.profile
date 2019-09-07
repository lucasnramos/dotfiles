# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

#if running bash
#if [ -n "$BASH_VERSION" ]; then
#    # include .bashrc if it exists
#    if [ -f "$HOME/.bashrc" ]; then
#	. "$HOME/.bashrc"
#    fi
#fi

# Testing new .bashrc
source ~/.bashrc

# custom exports
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="urxvt"
export BROWSER="google-chrome-stable"
export SCRIPTS="$HOME/.scripts"
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/"

# set PATH so it includes user's private bin directories
PATH="$SCRIPTS:$HOME/bin:$HOME/bin/eclipse:$HOME/bin/Postman:$HOME/.local/bin:$HOME/.nvm:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$JAVA_HOME/bin:$JAVA_HOME/lib/amd64:$PATH"
