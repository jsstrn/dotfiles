# dotfiles

Get a fresh Mac up and running.

## how to use

On a fresh Mac, open Terminal

```
git clone https://github.com/jsstrn/dotfiles.git
```


Run the script

```
cd dotfiles/
./up
```

Restart your Mac to apply changes in preferences with 

```
sudo shutdown -r now
```

## what it does

- `./up` runs `./preferences` and `./install`
- `./preferences` sets up Mac's preferences
- `./install` installs
	- Xcode Command-Line Tools
	- Homebrew and Homebrew Bundle, then
	- runs `brew bundle` to install everything in the Brewfile

## thanks

The popular [dotfiles](https://dotfiles.github.io) do a lot and instead of just forking them, I wanted to write my own simplified dotfiles. 

- some install scripts were plucked from [Sahil Bajaj](https://github.com/spinningarrow/)'s [up](https://github.com/spinningarrow/up)
- some macOS preferences were picked from [Mathias Bynens](https://github.com/mathiasbynens/)' [dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)
- other ideas where inspired by [Zach Holman](https://github.com/holman)'s [dotfiles](https://github.com/holman/dotfiles)

## todo

- add dotfiles and symlinks
	- [ ] `.gemrc`
	- [ ] `.gitconfig`
	- [ ] `.gitignore_global`
	- [ ] `.zshrc`