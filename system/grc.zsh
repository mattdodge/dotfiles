# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
	# TODO: Remove make from the bashrc aliases - it messes up tty
  source `brew --prefix`/etc/grc.bashrc
fi
