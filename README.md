```
        ░▒▓███████▓▒░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓███████▓▒░ ░▒▓███████▓▒░
       ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░
       ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░
        ░▒▓██████▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓██████▓▒░ ░▒▓███████▓▒░ ░▒▓██████▓▒░
              ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░
░▒▓██▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░
░▒▓██▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░  ░▒▓██▓▒░  ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░
```

---

### Arch Installation

<!-- #### Disable IPv6 (optional):

1. Press `e` during GRUB screen
2. Add `ipv6.disable=1` at the end of the `linux` line
3. Save GRUB settings by pressing `Ctrl + x` -->

#### Run `archinstall` `(minimal with linux-zen)` script

#### Add `base-devel` and `git` as additional packages to be installed

---

### Build `paru`

```shell
git clone https://aur.archlinux.org/paru.git
```

```shell
cd paru
```

```shell
makepkg -si --noconfirm
```

---

### Chezmoi dotfiles

#### Install `chezmoi`

```shell
paru chezmoi
```

#### Run `chezmoi`

```shell
chezmoi init --apply joaoinez
```

---

### Next steps

#### Check diffs

```shell
chezmoi diff
```

#### Sign in to github

```shell
gh auth login
```

#### Initialize neovim

#### Initialize tmux
