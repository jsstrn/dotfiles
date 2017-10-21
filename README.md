# dotfiles

These be the dotfiles. Get a fresh Mac up and running in less time than it takes to do it manually.

## usage

Follow these steps if you need to [format your machine and reinstall macOS](https://support.apple.com/en-us/HT204904).

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

### browser manual setup

For all browsers

- [uBlock](https://www.ublock.org)
- [Privacy Badger](https://www.eff.org/privacybadger)
- [HTTPS Everywhere](https://www.eff.org/https-everywhere)
- [Mailvelope](https://www.mailvelope.com/en)

For Firefox

Theme: Go to `Add-ons` then select `Appearance` and select `Compact Light` or `Compact Dark`

- [Lightbeam for Firefox](https://addons.mozilla.org/en-US/firefox/addon/lightbeam/)
- [Firefox Test Pilot](https://testpilot.firefox.com/experiments)
- [Containers](https://testpilot.firefox.com/experiments/containers)
- [Min Vid](https://testpilot.firefox.com/experiments/min-vid)

For Chrome

- [Octotree](https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc)
- [GitHub Repository Size](https://chrome.google.com/webstore/detail/github-repository-size/apnjnioapinblneaedefcnopcjepgkci)
- [OctoLinker](https://chrome.google.com/webstore/detail/octolinker/jlmafbaeoofdegohdhinkhilhclaklkp)
- [Isometric Contributions](https://chrome.google.com/webstore/detail/isometric-contributions/mjoedlfflcchnleknnceiplgaeoegien)
- [Earth View from Google Earth](https://chrome.google.com/webstore/detail/earth-view-from-google-ea/bhloflhklmhfpedakmangadcdofhnnoh)

## setup

### Generate a Brewfile

A Brewfile lists all your Homebrew dependencies. To generate a Brewfile, just run:

```
brew bundle dump
```

Adding `--force` will overwrite an existing Brewfile.

## appreciation

The popular [dotfiles](https://dotfiles.github.io) do a lot and instead of just forking them, I wanted to write my own dotfiles.

- some install scripts were plucked from [Sahil Bajaj](https://github.com/spinningarrow/)'s [up](https://github.com/spinningarrow/up)
- some macOS preferences were picked from [Mathias Bynens](https://github.com/mathiasbynens/)' [dotfiles](https://github.com/mathiasbynens/dotfiles/blob/master/.macos)
- other ideas where inspired by [Zach Holman](https://github.com/holman)'s [dotfiles](https://github.com/holman/dotfiles)
