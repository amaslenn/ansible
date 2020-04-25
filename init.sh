#!/bin/bash -eE

if [ -e /etc/os-release ]; then
    if grep -i redhat /etc/os-release; then
        yum install -y ansible
        exit $?
    elif grep -i ubuntu /etc/os-release; then
        apt-get update && apt-get install -y ansible
        exit $?
    fi
fi

echo "Unknown distro"
exit 1
