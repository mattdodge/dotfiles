alias rmpycache="find . | grep -E '(__pycache__|\.pyc|\.pyo$)' | xargs rm -rf"
py.test.cov() {
	py.test --cov=$1 --cov-report=term-missing $1 "${@:2}"
}
