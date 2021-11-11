# Source aliases
source $HOME/.aliases

# Source environment variables
source $HOME/.env

# Use z to jump between directories
. /usr/local/etc/profile.d/z.sh

# Use antigen to manage zsh plugins
source /usr/local/share/antigen/antigen.zsh

# Load prompt
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Load plugins
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting # must be the last plugin

# Apply changes
antigen apply

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

eval "$(starship init zsh)"
