alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

pathogen_install() {
	pushd ~/.dotfiles/vim/vim.symlink/bundle
	git submodule add $1 
	popd
}
