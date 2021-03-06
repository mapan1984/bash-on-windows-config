# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
      . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
if [ -d "${HOME}/bin" ] ; then
  PATH="${PATH}:${HOME}/bin"
fi

# Set PATH so it includes user's private bin if it exists
# User specific environment and startup programs
if [ -d "${HOME}/.bin" ] ; then
  PATH="${PATH}:${HOME}/.bin"
fi

# Python global pip install package
if [ -d "${HOME}/.local/bin" ] ; then
  PATH="${PATH}:${HOME}/.local/bin"
fi

# export DISPLAY=:0.0
