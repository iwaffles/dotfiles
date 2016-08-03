
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias gss='git status -s' # return's git status
alias gca='git commit -a' # commit all
alias gdf='git diff-files -C -M' # compares local files with remote
alias sudo='sudo ' # http://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo "Bash only checks the first word of a command for an alias, any words after that are not checked. That means in a command like sudo ll, only the first word (sudo) is checked by bash for an alias, ll is ignored. We can tell bash to check the next word after the alias (i.e sudo) by adding a space to the end of the alias value."
alias glp='git log --pretty=format:"%h - %an, %ar : %s"'
export NVM_DIR="/Users/iwaffles/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
