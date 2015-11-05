test_block() {
	coverage run `which nose2` $1.tests
	coverage report --include="$1/*" -m
}

unused_blocks() {
for blockcfg in etc/blocks/*; do 
  block=$(echo $blockcfg | sed 's/.*\/\(.*\)\.cfg/\1/'); 
  grep $block etc/services/* > /dev/null || echo $block; 
done
}

remove_unused_blocks() {
for blockcfg in etc/blocks/*; do 
  block=$(echo $blockcfg | sed 's/.*\/\(.*\)\.cfg/\1/'); 
  grep $block etc/services/* > /dev/null || rm -f $blockcfg; 
done
}
