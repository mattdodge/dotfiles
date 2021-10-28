tfclean() {
	cd ~/code/l/techops/environments/$1/terraform
	make clean
	cd -
}

f() {
	fly -t loansnap status || fly -t loansnap login -b
	fly -t loansnap "$@"
}
