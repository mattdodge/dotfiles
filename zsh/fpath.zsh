#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($ZSHDOT/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;

# Include ZSH's completion functions in fpath too
fpath=("$(brew --prefix)/share/zsh/site-functions" $fpath)
