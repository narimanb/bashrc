#!/bin/bash
#---------------------------------------------------#
#  Top Useful Bash Aliases and Bash Functions.      #
#  Github: https:github.com/narimanb/bashrc         #
#  File: .bash_functions                            #
#---------------------------------------------------#

#set -e  # exit upon error.
#set -u  # exit upon using undeclared variables.
#set -x  # enable xtrace option.

# ---------------------------------------------------
#  Useful Bash Functions.
# ---------------------------------------------------

# Create a directory and then go into it.
mkcd() {
  if [ -z "$1" ]; then
    # Display usage if no parameters are given.
    echo "mkcd: you are missing a directory name."
    echo "NAME"
    echo "    mkcd - create a directory and then go into it."
    echo "USAGE"
    echo "    mkcd <path/directory_name>"
    return 1
  fi
  mkdir -p -- "$1"
  cd -P -- "$1"
}

# Move into the directory and then lists the contents.
cl() {
  if [ -d "$1" ]; then
    # Move into the directory if it exists.
    cd -P -- "$1"
    ls
  else
    if [ -z "$1" ]; then
      # Lists the contents of the current directory if no parameters are given.
      ls
    else
      echo "cl: directory $1 not found."
      return 1
    fi
  fi
}

ht() {
  echo "Top 10 your most commonly used commands:"
  echo
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10
}
