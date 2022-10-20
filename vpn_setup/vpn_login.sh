#!/usr/bin/env bash

read -p "Enter Proton VPN Username: " username

protonvpn-cli login "${username}"


