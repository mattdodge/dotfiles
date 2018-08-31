# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias g='git'
alias ga='git add'
alias gl='git pull --prune'
alias gmt='git mergetool'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
gd() { git diff --color $* | diff-so-fancy | less --tabs=1,5 -R }
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gsu='git submodule update --init --recursive'
alias forgot='git commit --amend --no-edit'
alias git-branch-clean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
