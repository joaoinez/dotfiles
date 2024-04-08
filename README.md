```
        ░▒▓███████▓▒░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓███████▓▒░ ░▒▓███████▓▒░
       ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░
       ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░
        ░▒▓██████▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓██████▓▒░ ░▒▓███████▓▒░ ░▒▓██████▓▒░
              ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░
░▒▓██▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░
░▒▓██▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░  ░▒▓██▓▒░  ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░
```

## Arch

### Arch Installation

#### Disable IPv6 (optional):

1. Press `e` during GRUB screen
2. Add `ipv6.disable=1` at the end of the `linux` line
3. Save GRUB settings by pressing `Ctrl + x`

#### Run `archinstall` `(minimal with linux-zen)` script

---

### Chezmoi dotfiles

#### Run [arch.sh](https://github.com/JoaoInez/personal-website/blob/main/arch.sh) script

```shell
curl -fsSL joaoinez.me/arch.sh | bash
```

<!-- ---
TODO:

- grub config
  - Add Windows entry
- gtk and qt5 theming
  - Rose Pine
- mimeapps.list
--- -->
