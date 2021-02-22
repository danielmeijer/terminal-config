# Terminal config

My personal ZSH config.

## Requirements

- Debian based distro (Tested with ubuntu18.04 and 20.04).

## Installation

- Normal installation:

```bash
bash installation.sh
```

Options: 

```sudo bash installation.sh --quiet```: parameter to proceed directly to the installation process. NOTE: root required!

```bash installation.sh config```: update zsh config (installs plugins and refresh .zshrc config file).

## Usage

### To add alias

- Add it to ./config/alias.sh and rerun ./installation.sh to apply the changes.

## Known issues

### Some symbols didn't show up in the terminal

FIX: Install powerline font.
