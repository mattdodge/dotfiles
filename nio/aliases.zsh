test_block() {
	coverage run `which nose2` $1.tests
	coverage report --include="$1/*" -m
}
