alias reload!='. ~/.zshrc'
alias ..="cd .."
alias ...="cd .. ; cd .."

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

cdl() {
	cd $1
	ls -l
}
alias ls="ls -G" # list
alias la="ls -Gla" # list all, includes dot files
alias ll="ls -Gl" # long list, excludes dot files

alias pgrep="ps -ax | grep -i"
grepr() {
	grep -r -I $1 ./* --color=auto "${@:2}"
}

alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="sudo osascript -e 'set volume 10'"

alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias myipc="myip | pbcopy"
alias flush="sudo killall -HUP mDNSResponder" # Flush DNS cache

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias ping="ping -c 5" # ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook
