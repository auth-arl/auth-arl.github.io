#!/bin/bash
## @author              Amber Jain
## @section DESCRIPTION	A bash pretty print script which provides red/green/blue colored echo functions
## @section LICENSE     ISC


#################
# Documentation #
#################
#
# A bash pretty print script which provides following red/green/blue colored echo functions:
#     red_echo
#     simple_red_echo
#     green_echo
#     simple_green_echo
#     blue_echo
#     simple_blue_echo
#
# Simple copy/paste function definitions or 'source' this script in your bash script and then you can use these functions.


##########################
# Start of script 'body' #
##########################

SELF_NAME=$PWD

# Prints warning/error $MESSAGE in red foreground color
#
# For e.g. You can use the convention of using RED color for [E]rror messages
red_echo() {
    echo -e "\x1b[1;31m[AUTh-ARL Error] $SELF_NAME: $MESSAGE\e[0m"
}

simple_red_echo() {
    echo -e "\x1b[1;31m$MESSAGE\e[0m"
}

# Prints success/info $MESSAGE in green foreground color
#
# For e.g. You can use the convention of using GREEN color for [S]uccess messages
green_echo() {
    echo -e "\x1b[1;32m[AUTh-ARL Success] $SELF_NAME: $MESSAGE\e[0m"
}

simple_green_echo() {
    echo -e "\x1b[1;32m$MESSAGE\e[0m"
}

# Prints $MESSAGE in blue foreground color
#
# For e.g. You can use the convetion of using BLUE color for [I]nfo messages
# that require special user attention (especially when script requires input from user to continue)
blue_echo() {
    echo -e "\x1b[1;34m[AUTh-ARL Info] $SELF_NAME: $MESSAGE\e[0m"
}

simple_blue_echo() {
    echo -e "\x1b[1;34m$MESSAGE\e[0m"
}
