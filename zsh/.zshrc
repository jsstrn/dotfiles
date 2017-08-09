# Zsh configurations

# Use z
. /usr/local/etc/profile.d/z.sh

# Use thefuck
eval $(thefuck --alias)

# Use antigen to manage Zsh plugins
source /usr/local/share/antigen/antigen.zsh

# Load Oh My Zsh
antigen use oh-my-zsh

# Load completions for macOS
antigen bundle command-not-found
antigen bundle git
antigen bundle osx
antigen bundle sudo

# Load completions for vendors
antigen bundle aws
antigen bundle docker
antigen bundle heroku
antigen bundle web-search
antigen bundle vagrant

# Load completions for Homebrew
antigen bundle brew
antigen bundle brew-cask

# Load completions for JavaScript and Node.js
antigen bundle node
antigen bundle npm
antigen bundle yarn

# Load completions for Ruby
antigen bundle bundler
antigen bundle gem
antigen bundle rails

# Plugin list https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins

# Load plugins
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load theme
antigen theme pygmalion

# Apply changes
antigen apply
