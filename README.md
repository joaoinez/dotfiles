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

```text
▄▀█ █▀█ █▀▀ █░█
█▀█ █▀▄ █▄▄ █▀█
```

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

### Next steps

#### Check diffs

```shell
chezmoi diff
```

#### Sign in to github

```shell
gh auth login
```

#### Install node

```shell
nvm install node
```

#### Initialize neovim
#### Initialize tmux

---

```text
█▀▄▀█ ▄▀█ █▀▀ █▀█ █▀
█░▀░█ █▀█ █▄▄ █▄█ ▄█
```

### Settings

##### `Apple ID`

#### `iCloud Drive` -> Enable `Desktop & Documents Folders`

---

##### `Control Center`

#### `Battery` -> Enable `Show Percentage`

---

##### `Desktop & Dock`

#### `Dock` -> Enable `Minimise windows into application icon`

#### `Dock` -> Enable `Automatically hide and show the Dock`

#### `Dock` -> Disable `Show suggested and recent apps in Dock`

#### `Desktop & Stage Manager` -> Set `Click wallpaper to reveal desktop` to `Only in Stage Manager`

#### `Mission Control` -> Disable `Automatically rearrange Spaces based on most recent use`

---

##### `Displays` 

#### Set display resolution to `More space`

---

##### `Keyboard`

#### Set `Key repeat rate` to `Fast`

#### Set `Delay until repeat` to one tick before `Short`

---

##### `Trackpad`

####  `More Gestures` -> Set `App Exposé` to `Swipe Down with Three Fingers`

---

### Install `git`

```shell
git --version
```

### Install `homebrew`

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Chezmoi dotfiles

#### Run [macos.sh](https://github.com/JoaoInez/personal-website/blob/main/macos.sh) script

```shell
curl -fsSL joaoinez.me/macos.sh | sh
```

---

### Check diffs

```shell
chezmoi diff
```

---

### Install Vesktop

[download link](https://github.com/Vencord/Vesktop?tab=readme-ov-file#mac)

---


```
█░█░█ █ █▄░█ █▀▄ █▀█ █░█░█ █▀
▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀ ▄█
```

### Chezmoi dotfiles

#### Change script `Execution Policy`

```ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

#### Run [windows.ps1](https://github.com/JoaoInez/personal-website/blob/main/windows.ps1) script

```ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://joaoinez.me/windows.ps1'))
```

#### Enable `Hash Override`

```ps1
gsudo winget settings --enable InstallerHashOverride
```

#### Initialize `chezmoi`

```ps1
chezmoi init --apply joaoinez
```

---

### Check diffs

```shell
chezmoi diff
```
