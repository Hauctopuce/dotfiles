#! /usr/bin/env zsh

# Terminate already running polybar instances
polybar-msg cmd quit

# Launch bar and redirect logs to a file in /tmp
polybar hauctobar --config=$HOME/etc/config/polybar/hauctobar.ini 2>&1 | tee -a /tmp/polybar_hauctobar.log & disown
