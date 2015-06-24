# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/iwaffles/.rvm/bin:/usr/local/share/npm/bin/

export PATH=$PATH:$HOME/scripts/AWS-ElasticBeanstalk-CLI-2.3/eb/macosx/python2.7/
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias gr='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

export ANDROID_HOME=~/dev/android/adt-bundle-mac-x86_64-20140321/sdk
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
source ~/.nvm/nvm.sh
PATH="$PATH:/Users/iwaffles/dev/flow/"
#OLD: alias vim='/usr/local/Cellar/vim/7.4.488/bin/vim'
alias vim='rvm system do /usr/local/bin/vim $@'
PATH="$PATH:/Users/iwaffles/dev/darkroll/app/versions/20120222/units/mraid/code/js/client/"
alias gbdate='for k in `git branch | sed s/^..//`; do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cred%cr%Creset" $k --`\\t"$k";done | sort'

alias gmerged='git branch --merged | grep -v "\*" | xargs -n 1'
alias gmergeddelete='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gbdate='for k in `git branch | sed s/^..//`; do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cred%cr%Creset" $k --`\\t"$k";done | sort'
