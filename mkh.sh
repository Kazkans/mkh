#!/bin/bash

if [ -z "$1" ]; then
	echo -e "Usage: $0 header_name"
	exit 1
fi


file=$1".h"

touch $file

result=${PWD##*/}

name=$(printf '%s_%s_H' "${result^^}" "${1^^}")
printf "#ifndef %s
#define %s

#endif" $name $name >> $file
