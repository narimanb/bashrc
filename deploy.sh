#!/bin/bash
#---------------------------------------------------#
#  Top Useful Bash Aliases and Bash Functions.      #
#  Github: https:github.com/narimanb/bashrc         #
#  File: deploy.sh                                  #
#  https://dev-lab.online/top-useful-bash-aliases   #
#---------------------------------------------------#

if [ $# -eq 0 ]; then
    # Display usage if no parameters are given.
    echo -e "\nDeploy bashrc scripts to a remote host: you are missing a <user@host>."
    echo -e "\nUSAGE"
    echo -e "    bash deploy.sh <user@host>\n"
    exit 1
fi

# Declare constants.
readonly remote_host=$1

readonly bashrc_filename=".bashrc"
readonly bash_aliases_filename=".bash_aliases"
readonly bash_functions_filename=".bash_functions"
readonly bash_logout_filename=".bash_logout"

# Backup '.bashrc' file.
if ssh ${remote_host} "[ -f ~/$bashrc_filename ]"; then
    echo "Backing up [${remote_host}:~/${bashrc_filename}] to [${remote_host}:~/${bashrc_filename}.old]."
    ssh ${remote_host} "cp ~/${bashrc_filename} ~/${bashrc_filename}.old"
fi

# Backup '.bash_aliases' file.
if ssh ${remote_host} "[ -f ~/$bash_aliases_filename ]"; then
    echo "Backing up [${remote_host}:~/${bash_aliases_filename}] to [${remote_host}:~/${bash_aliases_filename}.old]."
    ssh ${remote_host} "cp ~/${bash_aliases_filename} ~/${bash_aliases_filename}.old"
fi

# Backup '.bash_functions' file.
if ssh ${remote_host} "[ -f ~/$bash_functions_filename ]"; then
    echo "Backing up [${remote_host}:~/${bash_functions_filename}] to [${remote_host}:~/${bash_functions_filename}.old]."
    ssh ${remote_host} "cp ~/${bash_functions_filename} ~/${bash_functions_filename}.old"
fi

# Backup '.bash_logout' file.
if ssh ${remote_host} "[ -f ~/$bash_logout_filename ]"; then
    echo "Backing up [${remote_host}:~/${bash_logout_filename}] to [${remote_host}:~/${bash_logout_filename}.old]."
    ssh ${remote_host} "cp ~/${bash_logout_filename} ~/${bash_logout_filename}.old"
fi

# Deploy the scripts to a remote host.
echo -e "\nDeploy the scripts to the [${remote_host}]:"
scp ./bashrc/${bashrc_filename} ${remote_host}:~/${bashrc_filename}                 # deploy '.bashrc' file.
scp ./bashrc/${bash_aliases_filename} ${remote_host}:~/${bash_aliases_filename}     # deploy '.bash_aliases' file.
scp ./bashrc/${bash_functions_filename} ${remote_host}:~/${bash_functions_filename} # deploy '.bash_functions' file.
scp ./bashrc/${bash_logout_filename} ${remote_host}:~/${bash_logout_filename}       # deploy '.bash_logout' file.
