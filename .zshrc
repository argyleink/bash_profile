# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
autoload -U add-zsh-hook
add-zsh-hook -Uz chpwd (){ ls -a; }

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='ls -GFh'
alias please='sudo !!'
alias serve='python -m SimpleHTTPServer'
alias servehot="live-server --ignorePattern='.git/*'"
alias hack='open -a "Sublime Text"'
alias k8s='kubectl'
alias reload='. ~/.bash_profile'
alias npmplease='sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin}'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/obey/.nvm/v0.8.21/bin:/sw/bin:/sw/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/X11R6/bin:/usr/local/git/bin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export PATH=/usr/local/bin:$PATH
# export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
