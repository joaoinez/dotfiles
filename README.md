# dotfiles

Install paru:

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

How to run:

```sh
chezmoi init --apply $GITHUB_USERNAME
```

TODO:
systemd services: sddm and docker.socket
change shell from bash to zsh
grub config
sddm config and theming
gtk and qt5 theming
change docker image location
add color to pacman.conf
