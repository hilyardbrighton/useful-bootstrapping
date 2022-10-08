#!/usr/bin/env bash

# Get Time
CURRENT_TIME=$( date '+%F_%H:%M:%S' )

# Generate SSH Key
printf '%s\n' Y |sudo ssh-keygen -t rsa -b 4096 -f ./mark-utility-box-1.ssh-server.key -P "mark-utility-box-1 $CURRENT_TIME"

