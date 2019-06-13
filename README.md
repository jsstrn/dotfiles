# dotfiles

These be the dotfiles. Get a fresh Mac up and running in less time than it takes to do it manually.

## Format your machine

To erase (format) your machine, restart your computer in macOS recovery mode, then select **Disk Utility**. After erasing your disk, select **Reinstall macOS**.

Read how to [format your machine and reinstall macOS](https://support.apple.com/en-us/HT204904).

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
