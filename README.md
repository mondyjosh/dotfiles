# mondyjosh's dotfiles

Dotfiles for mondyjosh, powered by [Chezmoi](https://www.chezmoi.io/)!

## Install Dotfiles on a New Machine

Following chezmoi's documentation [documentation](https://www.chezmoi.io/user-guide/daily-operations/#install-chezmoi-and-your-dotfiles-on-a-new-machine-with-a-single-command), this fantastic one-liner sets everything up:

```bash
$ sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply mondyjosh
```

When you run chezmoi init on a new machine you will be prompted to enter your passphrase once to decrypt `key.txt.age`. Your decrypted private key will be stored in `~/.config/chezmoi/key.txt`.

## Install Dotfiles as Part of Ansible Playbook

See [my personal Ansible playbook repository](https://github.com/mondyjosh/ansible) to see how this can be installed as part of a workstation setup.
