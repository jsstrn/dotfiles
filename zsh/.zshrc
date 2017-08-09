# Zsh configurations

# Use z
. /usr/local/etc/profile.d/z.sh

# Use thefuck
eval $(thefuck --alias)

# Use antigen to manage Zsh plugins
source /usr/local/share/antigen/antigen.zsh

# Load Oh My Zsh
antigen use oh-my-zsh

# Load theme
antigen theme pygmalion

# Load plugins
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load completions
antigen bundle brew
antigen bundle docker
antigen bundle git
antigen bundle heroku
antigen bundle node
antigen bundle npm
antigen bundle rails
antigen bundle vagrant

# Plugin list https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins

# Apply changes
antigen apply

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
