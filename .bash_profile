NAME="atom"

# link sublime
# ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ls='ls -GFh'
alias please='sudo !!'
alias serve='python -m SimpleHTTPServer'
alias hack='subl .'

# Git branch in prompt.
parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# auto ls after cd'ing
cd () {
  builtin cd $@ && ls
}

# Rename Terminal Window - Usage: wn 'window name'
function wn {
  printf "\e]2;$1\a"
}

# Rename Terminal Tab - Usage: tn 'tab name'
function tn {
  printf "\e]1;$1\a"
}

# cl icon with icon, folder, and git branch if there
export PS1="💀  \[\033[01;32m\]\W\[\033[00m\]\$(parse_git_branch)\[\033[00m\] "

# paths
export PATH=/usr/local/bin:$PATH
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
