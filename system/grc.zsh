# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
	# TODO: Remove make from the bashrc aliases - it messes up tty
	BASHRC_FILE=`brew --prefix`/etc/grc.bashrc
	if [[ -f $BASHRC_FILE ]]; then
		source $BASHRC_FILE
	fi
fi
