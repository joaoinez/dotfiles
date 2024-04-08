```
        ░▒▓███████▓▒░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓███████▓▒░ ░▒▓███████▓▒░
       ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░
       ░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░
        ░▒▓██████▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒▒▓█▓▒░░▒▓██████▓▒░ ░▒▓███████▓▒░ ░▒▓██████▓▒░
              ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░
░▒▓██▓▒░      ░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░ ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░
░▒▓██▓▒░▒▓███████▓▒░░▒▓████████▓▒░▒▓█▓▒░  ░▒▓██▓▒░  ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░


```

`archinstall`

---

Disable IPv6 (optional):

```sh
nmcli connection modify "Wired connection 1" ipv6.method "disabled"
nmcli connection up "Wired connection 1"
```

Update system:

```sh
sudo pacman -Syu
```

Install git:

```sh
sudo pacman -S git
```

Install paru:

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ~
```

How to run:

```sh
chezmoi init --apply joaoinez
```

TODO:

- grub config
  - Add Windows entry
- gtk and qt5 theming
  - Rose Pine
- mimeapps.list
