#!/bin/bash
# Created by sshanthony
ip_address=$(hostname -I | awk '{print $1}')
interface=$(ip addr show | grep -B 2 "$ip_address" | grep -oP '^\d+: \K\w+')
echo "$interface"
