#! /bin/bash
# Alex Childers and Elizabeth Pineda

if [ $# -eq 0 ]; then
	dir="."
else
	dir="$1"
fi

set -- `ls $dir`

for arg_name in $*; do
	if [ -d $dir/$arg_name ]; then
		echo "$arg_name is a directory"
	elif [ -s $dir/$arg_name ]; then
		echo "$arg_name is a non-empty file"
	else
		echo "$arg_name is an empty file"
	fi
	shift
done

exit 0

