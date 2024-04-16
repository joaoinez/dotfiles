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

<!-- #### Disable IPv6 (optional):

1. Press `e` during GRUB screen
2. Add `ipv6.disable=1` at the end of the `linux` line
3. Save GRUB settings by pressing `Ctrl + x` -->

#### Run `archinstall` `(minimal with linux-zen)` script

---

### Chezmoi dotfiles

#### Run [arch.sh](https://github.com/JoaoInez/personal-website/blob/main/arch.sh) script

```shell
curl -fsSL joaoinez.me/arch.sh | sh
```

---

## MacOS

### Settings

#### Enable `App Exposé`

#### Set `Key repeat rate` to `Fast`

#### Set `Delay until repeat` to one tick before `Short`

#### Enable `Minimise windows into application icon`

#### Enable `Automatically hide and show the Dock`

#### Disable `Show suggested and recent apps in Dock`

#### Enable `Desktop & Documents Folders`

---

### Chezmoi dotfiles

#### Run [macos.sh](https://github.com/JoaoInez/personal-website/blob/main/macos.sh) script

```shell
curl -fsSL joaoinez.me/macos.sh | sh
```

---

### Fonts Installation

#### Open `Fonts` folder

```shell
open . ~/.local/share/chezmoi/Fonts
```

#### Open `FontBook`

#### Drag and drop fonts

#### Install [Vencord](https://vencord.dev/download/)

---

## Windows

### Chezmoi dotfiles

#### Change script `Execution Policy`

```ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

#### Run [windows.ps1](https://github.com/JoaoInez/personal-website/blob/main/windows.ps1) script

```ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://joaoinez.me/windows.ps1'))
```

#### Initialize `chezmoi`

```ps1
chezmoi init --apply joaoinez
```

### Add GlazeWM to startup

#### Open startup folder

`Win + R` > `shell:startup`

#### Add GlazeWM shortcut to startup folder

### Hide taskbar

#### Enable `Automatically hide the taskbar`

#### Run NirCmd

```ps1
gsudo nircmd win trans class Shell_TrayWnd 256
```

### Change `ueli` `Hot Key` to `Ctrl + Shift + Space`

### Install [Vencord](https://vencord.dev/download/)
