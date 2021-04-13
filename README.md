# dotfiles

These be the dotfiles. Get a fresh Mac up and running in less time than it takes to do it manually.

## Steps

1. Check that your Brewfile is up to date and push any changes to this repository
2. [Erase your disk](https://support.apple.com/en-us/HT208496) and [reinstall macOS](https://support.apple.com/en-us/HT204904)
3. Clone this Git repository and run the scripts

## Format your machine

Follow these steps to format your disk and reinstall macOS

1. Turn off your machine
2. Hold on to <kbd>Option</kbd> + <kbd>Command</kbd> + <kbd>R</kbd> and turn your machine on
3. Select **Disk Utility** and erase your disk
4. Select **Reinstall macOS**

⚠️ You must reinstall to macOS Mojave or higher if you format your disk to APFS. Otherwise stick to Mac OS Extended for older macOS versions. 

Follow these guides to [erase your disk](https://support.apple.com/en-us/HT208496) and [reinstall macOS](https://support.apple.com/en-us/HT204904)

### macOS recovery mode

Use one of these shortcuts to reboot your machine in macOS recovery mode.

|Shortcut |Details |
|---|---|
|<kbd>Command</kbd> + <kbd>R</kbd> | Install the latest macOS that was installed on your Mac |
|<kbd>Option</kbd> + <kbd>Command</kbd> + <kbd>R</kbd> | Upgrade to the latest macOS compatible with your Mac (recommended) |
|<kbd>Shift</kbd> + <kbd>Option</kbd> + <kbd>R</kbd> | Install the macOS that came with your Mac, or the closest version still available |

## Usage

Clone the repository

```
git clone https://github.com/jsstrn/dotfiles.git ~/.dotfiles
```

Change into the directory

```
cd ~/.dotfiles
```

Install all applications 

```
./up apps
```

Stow all .dotfiles

```
./up stow
```

## Brewfile

A Brewfile lists all your Homebrew dependencies. 

Generate a Brewfile by running the following command: 

```bash
brew bundle dump
```

If a Brewfile already exists, you can overwrite it by adding `--force`

```bash
brew bundle dump --force
```

You can search for Homebrew formulae on [https://formulae.brew.sh](https://formulae.brew.sh) 

## Appreciation

The popular [dotfiles](https://dotfiles.github.io) do a lot and instead of just forking them, I wanted to write my own dotfiles.

- some install scripts were plucked from [Sahil Bajaj](https://github.com/spinningarrow/)'s [up](https://github.com/spinningarrow/up)
- some macOS preferences were picked from [Mathias Bynens](https://github.com/mathiasbynens/)' [dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)
- other ideas where inspired by [Zach Holman](https://github.com/holman)'s [dotfiles](https://github.com/holman/dotfiles)
