# dotfiles

These be the dotfiles. Get a fresh Mac up and running in less time than it takes to do it manually.

## usage

On a fresh Mac, open Terminal

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

### Install browser extensions

I haven't found a way to automate this step so you'll have to download them manually

- [uBlock](https://www.ublock.org)
- [Privacy Badger](https://www.eff.org/privacybadger)
- [HTTPS Everywhere](https://www.eff.org/https-everywhere)
- [Lightbeam for Firefox](https://addons.mozilla.org/en-US/firefox/addon/lightbeam/)

## setup

### Create a Brewfile

A Brewfile lists all your Homebrew dependencies. To generate a Brewfile, just run:

```
brew bundle dump
```

Adding `--force` will overwrite an existing Brewfile.

## thanks

The popular [dotfiles](https://dotfiles.github.io) do a lot and instead of just forking them, I wanted to write my own simplified dotfiles.

- some install scripts were plucked from [Sahil Bajaj](https://github.com/spinningarrow/)'s [up](https://github.com/spinningarrow/up)
- some macOS preferences were picked from [Mathias Bynens](https://github.com/mathiasbynens/)' [dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)
- other ideas where inspired by [Zach Holman](https://github.com/holman)'s [dotfiles](https://github.com/holman/dotfiles)
