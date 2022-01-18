# ansible playbook

Playbook to set up new Linux/MacOS machine the way I like.

Prepare
```sh
# generate ssh keys
ssh-keygen -t rsa -b 4096 -C "email@example.com
cat ~/.ssh/id_rsa.pub | clip.exe

# use Windows' Git credential manager in WSL:
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager-core.exe"
```

Install
```sh
./init.sh     # prepare to use Ansible
./setup <macos|linux> [<ansible parameters>]
# ./setup linux --extra-vars user_name mandrey
```

## TODO
- [ ] `sudo update-alternatives --install /usr/bin/python python $(realpath $(which python3)) 1`  
      `update-alternatives --list python`
- [ ] `sudo apt install python3-pip`  
      `sudo update-alternatives --install /usr/bin/pip pip $(realpath $(which pip3)) 1`  
      `update-alternatives --list pip`
- [ ] Install `virtualenvwrapper` (`pip install virtualenvwrapper`, `source ~/.local/bin/virtualenvwrapper.sh`, add `source ~/.local/bin` to `PATH`)
