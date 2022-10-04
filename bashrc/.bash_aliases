#!/bin/bash
#---------------------------------------------------#
#  Top Useful Bash Aliases and Bash Functions.      #
#  Github: https:github.com/narimanb/bashrc         #
#  File: .bash_aliases                              #
#  https://dev-lab.online/top-useful-bash-aliases   #
#---------------------------------------------------#

alias bashrc='vim ~/.bashrc'
alias bupdate="source ~/.bashrc && echo 'The .bashrc was successfully updated.'"

alias balias='vim ~/.bash_aliases' # Edit this file.
alias bfunc='vim ~/.bash_functions'
alias blogout='vim ~/.bash_logout'

# Listing defined functions in '.bash_profile', '.bashrc' or '.bash_functions'.
alias blistfunc='compgen -A function | less'

# ------------------------------------------------- #
#  Aliases for frequently used commands.            #
# ------------------------------------------------- #

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
# Special directories.
alias .h='cd ~'
alias .l='cd /var/log'
alias .r='cd /'
alias .t='cd $(mktemp -d)' # Create and navigate to a temporary directory under '/tmp'.
alias ~='cd ~'

# WARNING: Aliases for standard POSIX commands.
alias mkdir='mkdir -vp'
alias mv='mv -iv'  # Prompt before move.
alias cp='cp -riv' # Don't overwrite by default.
alias rm='rm -iv'  # Prompt before remove.

alias cpv='rsync -ah --info=progress2' # Copy with progress bar.
alias rmr='rm -rfiv'

alias wget='wget -c' # Resume wget by default.

alias h='history'
alias h1='history 10'
alias h2='history 20'
alias h3='history 30'
alias hg='history | grep'
alias hw='history -w'

alias f='find . | grep'
alias j='jobs -l'

alias ?='man'
alias a?='apropos'
alias w?='whatis'
alias i?='info'
alias h?='help'

alias sudo!='sudo !!' # Re-run the last executed command as a root user.
alias nano!='sudo nano'
alias vi!='sudo vi'
alias vim!='sudo vim'
alias cat!='sudo cat'

alias c='clear'
alias r='reset'

# ------------------------------------------------- #
# Aliases for listing files in many ways.           #
# ------------------------------------------------- #

# '.' in front: include hidden files and directories.
# '!' in the end: run as the root user.

alias l='ls -CF'
alias l!='sudo ls -CF'
alias la='ls -A'
alias la!='sudo ls -A'

# Long listing format.
alias ll='ls -lFh'
alias ll!='sudo ls -lFh' # Run as the root user.
alias .ll='ls -alFh'     # Include hidden files and directories.
alias .ll!='sudo ls -alFh'

# Sort by Directory from other file types.
alias ld='ls -lFh --group-directories-first'
alias ld!='sudo ls -lFh --group-directories-first'
alias .ld='ls -alFh --group-directories-first'
alias .ld!='sudo ls -alFh --group-directories-first'

# Sort by File Size.
alias lm='ls -lSFh'
alias lm!='sudo ls -lSFh'
alias .lm='ls -alSFh'
alias .lm!='sudo ls -alSFh'

# Sort by Modification Date and Time.
alias lt='ls -ltFh'
alias lt!='sudo ls -ltFh'
alias .lt='ls -altFh'
alias .lt!='sudo ls -altFh'

# ------------------------------------------------- #
#  Aliases to avoid a long string of options.       #
# ------------------------------------------------- #

# Update the packages confirming with 'yes' to the prompt.
alias update='sudo apt-get update -y'

# Update the packages confirming with 'yes',
# Upgrade the packages confirming with 'yes',
# Remove unused packeges and temporary files,
# Remove old version of packages.
alias upgrade='sudo apt-get update -y && \
                sudo apt-get upgrade -y && \
                sudo apt-get dist-upgrade && \
                sudo apt-get autoremove && \
                sudo apt-get autoclean'

# Remove unused packeges and temporary files,
# Remove old version of packages.
alias clean='sudo apt-get autoremove && \
                sudo apt-get autoclean'

# Count total files & directories.
alias count='echo && \
             echo -e "Count in\033[0;32m $PWD" && \
             echo -e "\033[0;31m$(find . -type f | wc -l)\033[1;37m files." && \
             echo -e "\033[0;34m$(find . -type d | wc -l)\033[1;37m directories." && \
             echo'

# Add an "alert" alias for long running commands. Use like so:
# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# ------------------------------------------------- #
#  Uncomment other useful aliases.                  #
# ------------------------------------------------- #

#alias meminfo='free -m -l -h -t'
#alias cpuinfo='lscpu'
#alias portinfo='sudo netstat -lntup'

# Apache2 aliases
# NOTE: On Debian 8.x+/Ubuntu 15.04+ is 'apache2',
# for RHEL/CentOS/Fedora version 7.x or newer change 'apache2' to 'httpd'.
#alias a2info='sudo systemctl status apache2'
#alias a2start='sudo systemctl start apache2'
#alias a2stop='sudo systemctl stop apache2'
#alias a2restart='sudo systemctl restart apache2'
#alias a2saferestart='sudo apachectl -k graceful'
#alias a2reload='sudo systemctl reload apache2'
#alias a2test='sudo apachectl configtest'

# Extract the contents of a .tar file
#alias untar='tar -xvf'

# Generate a random 20 character password using OpenSSL
#alias randpass='openssl rand -base64 20'
