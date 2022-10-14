#!/usr/bin/env bash

echo -n "Enter username@host: "
read inval

ssh-copy-id -i ~/.ssh/mark-utility-box-1.ssh-server.key.pub "$inval"

