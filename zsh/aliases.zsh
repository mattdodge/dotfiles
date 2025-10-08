alias reload!='. ~/.zshrc'
alias ..="cd .."
alias ...="cd .. ; cd .."

# We alias ctx to source our bash script so we can set env vars
alias ctx='source set-ctx "$@"'

cdl() {
	cd $1
	ll
}
alias ls="ls --color=auto" # list
alias la="ls -la --color=auto" # list all, includes dot files
alias ll="ls -l --color=auto" # long list, excludes dot files

alias pgrep="ps -ax | grep -i"
# grepr ignores some common big files that I don't actually ever want to match
grepr() {
	grep -r --exclude '*.json' --exclude '*.backup' --exclude 'encompass_test_data.py' --exclude-dir=node_modules -I $1 ./* --color=auto "${@:2}" 2>/dev/null
}
# greprall is grepr without ignoring/excluding anything
greprall() {
	grep -r -I $1 ./* --color=auto "${@:2}" 2>/dev/null
}

alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="sudo osascript -e 'set volume 10'"

alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias myipc="myip | pbcopy"
alias flush="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache" # Flush DNS cache
alias fixclipboard="killall pboard"  # I have to run this far too often

alias gzip="gzip -9n" # set strongest compression level as ‘default’ for gzip
alias ping="ping -c 5" # ping 5 times ‘by default’
alias ql="qlmanage -p 2>/dev/null" # preview a file using QuickLook

# Use bat instead of cat
# https://github.com/sharkdp/bat
alias cat="bat --theme=zenburn"
alias oldcat=/bin/cat

# Schedule sleep in X minutes, use like: sleepin 60
function sleepin() {
	local minutes="$1"
	local datetime="`date -v+${minutes}M +"%m/%d/%y %H:%M:%S"`"
	sudo pmset schedule sleep "$datetime"
	echo "Going to sleep at $datetime"
}

function see_cert() {
	openssl s_client -showcerts -servername $1 -connect $1:443 </dev/null
}

