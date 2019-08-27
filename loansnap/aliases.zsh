tfclean() {
	cd ~/code/l/techops/environments/$1/terraform
	make clean
	cd -
}
