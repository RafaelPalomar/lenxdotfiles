# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Add ~/.local/bin to PATH
export PATH=${PATH}:${HOME}/.local/bin:${HOME}/.local/share/status

#Set the default terminal
export TERMINAL="/usr/bin/st"

#Set the XDG configuration home
export XDG_CONFIG_HOME="${HOME}/.config"

#Set the system monitor
export SYSMON="$(npm bin)/gtop 2> /dev/null"
