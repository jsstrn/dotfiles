# If you come from bash you might have to change your $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# source $ZSH/oh-my-zsh.sh

# Use antigen to manage Zsh plugins
source /usr/local/share/antigen/antigen.zsh

# Load Oh My Zsh
antigen use oh-my-zsh

# Load theme
antigen theme pygmalion

# Zsh completion all the things
antigen bundle brew
antigen bundle docker
antigen bundle git
antigen bundle heroku
antigen bundle node
antigen bundle npm
antigen bundle rails
antigen bundle vagrant

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Zsh completion
antigen bundle zsh-users/zsh-completions

# Fish-like autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# Tell antigen that you're done
antigen apply

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
