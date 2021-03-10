# Use neovim
alias vim=$(which nvim)

pathogen_install() {
	pushd ~/dotfiles/vim/vim.symlink/bundle
	git submodule add $1 
	popd
}
