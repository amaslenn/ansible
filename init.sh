#!/bin/bash -eE

if [ -e /etc/os-release ]; then
    if [ "$EUID" -ne 0 ]; then
        echo "Please restart with root permissions"
        exit 1
    fi

    if grep -i redhat /etc/os-release; then
        yum install -y ansible
        exit 0
    elif grep -i ubuntu /etc/os-release; then
        apt-get update && apt-get install -y ansible
        exit 0
    fi
fi

if echo "$OSTYPE" | grep -i darwin; then
    brew --version || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ansible --version || brew install ansible
    ansible-galaxy install -r requirements.yml
    exit 0
fi

echo "Unknown distro"
exit 1
