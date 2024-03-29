# ansible playbook

Playbook to set up new Linux/MacOS machine the way I like.

Prepare
```sh
# generate ssh keys
ssh-keygen -t rsa -b 4096 -C "email@example.com
cat ~/.ssh/id_rsa.pub | clip.exe

# use Windows' Git credential manager in WSL:
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"
```

Install
```sh
./init.sh     # prepare to use Ansible
./setup <macos|linux> [<ansible parameters>]
# example: ./setup linux --extra-vars user_name=mandrey
sudo chsh mandrey -s /usr/bin/zsh
```

## TODO
- [ ] `sudo update-alternatives --install /usr/bin/python python $(realpath $(which python3)) 1`  
      `update-alternatives --list python`
- [ ] `sudo apt install python3-pip`  
      `sudo update-alternatives --install /usr/bin/pip pip $(realpath $(which pip3)) 1`  
      `update-alternatives --list pip`
