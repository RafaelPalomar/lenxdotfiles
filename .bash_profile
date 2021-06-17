# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# Start the Simple X Hotkey Daemon

# This will unlock the id_rsa SSH key
#  keychain --eval --agents gpg --agents ssh A4F1017DFAB43A9CB94358B5A17947E1C9681B37 ~/.ssh/id_rsa
#eval `keychain --nogui --noinherit --stop others --agents gpg,ssh  A4F1017DFAB43A9CB94358B5A17947E1C9681B37 ~/.ssh/id_rsa`
#if [ -f "${HOME}/.keychain/${HOSTNAME}-sh" ]; then
#. "${HOME}/.keychain/${HOSTNAME}-sh"
#. "${HOME}/.keychain/${HOSTNAME}-sh-gpg"
#fi
#gpgconf --launch gpg-agent

# if [ -f "${HOME}/.keychain/${HOSTNAME}-sh" ]; then
# . "${HOME}/.keychain/${HOSTNAME}-sh"
# fi

 if [ -f "${HOME}/.keychain/${HOSTNAME}-sh-gpg" ]; then
 . "${HOME}/.keychain/${HOSTNAME}-sh-gpg"
 fi
