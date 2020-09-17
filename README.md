# ansible playbook

Playbook to set up new Linux/MacOS machine the way I like.

```sh
./init.sh     # prepare to use Ansible
./setup <macos|linux> [<ansible parameters>]

# generate ssh keys
ssh-keygen -t rsa -b 4096 -C "email@example.com
cat ~/.ssh/id_rsa.pub | clip.exe
```

## TODO
[ ] update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
    update-alternatives --list python
