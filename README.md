# dotfiles

These be the dotfiles. Get a fresh Mac up and running in less time than it takes to do it manually.

## Format your machine

![](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/macos/highsierra/macos-high-sierra-recovery-mode-reinstall.jpg)

Follow these steps to format your disk and reinstall macOS

- Restart your machine in **macOS recovery mode**
- Select **Disk Utility** and erase your disk
- Select **Reinstall macOS**

⚠️ You must reinstall to macOS Mojave or higher if you format your disk to APFS. Otherwise stick to Mac OS Extended for older macOS versions. 

### macOS recovery mode

Use one of these shortcuts to reboot your machine in macOS recovery mode.

|Shortcut |Details |
|---|---|
|<kbd>Command</kbd> + <kbd>R</kbd> | Install the latest macOS that was installed on your Mac |
|<kbd>Option</kbd> + <kbd>Command</kbd> + <kbd>R</kbd> | Upgrade to the latest macOS compatible with your Mac |
|<kbd>Shift</kbd> + <kbd>Option</kbd> + <kbd>R</kbd> | Install the macOS that came with your Mac, or the closest version still available |

❗️ We recommend using <kbd>Option</kbd> + <kbd>Command</kbd> + <kbd>R</kbd> to get the latest macOS.

For more information, you can read how to [format your machine and reinstall macOS](https://support.apple.com/en-us/HT204904).

## Usage

Clone the repository

```
git clone https://github.com/jsstrn/dotfiles.git ~/.dotfiles
```

Change into the directory

```
cd ~/.dotfiles
```

Run the script

```
./up
```

## Setup

### Generate a Brewfile

A Brewfile lists all your Homebrew dependencies. To generate a Brewfile, just run:

```
brew bundle dump
```

Adding `--force` will overwrite an existing Brewfile.

## Appreciation

The popular [dotfiles](https://dotfiles.github.io) do a lot and instead of just forking them, I wanted to write my own dotfiles.

- some install scripts were plucked from [Sahil Bajaj](https://github.com/spinningarrow/)'s [up](https://github.com/spinningarrow/up)
- some macOS preferences were picked from [Mathias Bynens](https://github.com/mathiasbynens/)' [dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)
- other ideas where inspired by [Zach Holman](https://github.com/holman)'s [dotfiles](https://github.com/holman/dotfiles)
