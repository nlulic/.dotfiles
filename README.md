# .dotfiles

```shell
ansible-playbook -t dotfiles ./ansible/setup.yml --ask-become-pass --ask-vault-pass
```

Possible tags: `core`, `dotfiles`, `install`,  `ssh`, `stow`