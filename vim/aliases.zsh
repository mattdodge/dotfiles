# Use neovim
alias vim="/usr/local/bin/nvim"

pathogen_install() {
	pushd ~/.dotfiles/vim/vim.symlink/bundle
	git submodule add $1 
	popd
}
