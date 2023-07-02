#!/bin/bash
#---------------------------------------------------#
#  Top Useful Bash Aliases and Bash Functions.      #
#  Github: https:github.com/narimanb/bashrc         #
#  File: .bash_logout                               #
#---------------------------------------------------#

# when leaving the console clear the screen to increase privacy
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

# uncomment blocks of code to clear database history for security reasons
# mysql history
#if [ -f ~/.mysql_history ]; then
#    /bin/rm "$HOME/.mysql_history"
#fi

# postgresql history
#if [ -f ~/.psql_history ]; then
#    /bin/rm "$HOME/.psql_history"
#fi

# redis history
#if [ -f ~/.rediscli_history ]; then
#    /bin/rm "$HOME/.rediscli_history"
#fi

# uncomment to clear bash command history for security reasons
#history -c

# uncomment to backup files by running the custom backup script
#if [ -f ~/bin/backup.sh ]; then
#    ~/bin/backup.sh
#fi
