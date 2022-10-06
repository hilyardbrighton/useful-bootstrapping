#!/usr/bin/env bash

sudo apt install -y lighttpd
sudo curl -sSL https://install.pi-hole.net | sudo PIHOLE_SKIP_OS_CHECK=true bash

