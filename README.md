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
chezmoi init --apply joaoinez
```

TODO:

- grub config
  - Add Windows entry
- sddm config and theming
  - /etc/sddm.conf.d/theme.conf
  ```conf
  [Theme]
  Current-tokyo-night-sddm
  ```
- gtk and qt5 theming
  - Rose Pine
- change docker image location
  - /etc/docker/daemon.json
  ```json
  {
    "data-root": "/home/astherae/docker"
  }
  ```
- add color to pacman.conf
