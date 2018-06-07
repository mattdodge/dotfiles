alias rmpycache="find . | grep -E '(__pycache__|\.pyc|\.pyo$)' | xargs rm -rf"
py.test.cov() {
	py.test --cov=$1 --cov-report=term-missing $1 "${@:2}"
}
alias serverhere="/Users/matt/.pyenv/versions/3.6.3/bin/twistd -n web -p "tcp:port=8000" --path ."
