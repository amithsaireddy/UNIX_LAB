#!/bin/bash

machines=("172.23.190.174")
function get_system_info {
    local machine=$1
    echo "System information for $machine:"
    echo "---------------------------------------"
    echo "Memory Usage:"
    ssh "172.23.190.174" 'free -m'
    echo "CPU Usage:"
    ssh "172.23.190.174" 'top -bn1 | grep "Cpu(s)"'
    echo "---------------------------------------"
}
for machine in "${machines[@]}"
do
    get_system_info "$machine"
done
