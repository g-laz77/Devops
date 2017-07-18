#!/bin/bash

#logf="$1.log"
interval=2000
first_run=
# temp files, current and last md5s for diff to compare
temp="$(mktemp ./temp/$1.XXXXXX)"
if [ -z "$1" ]; then
        echo "No file specified, aborting" >&2
        exit 1
fi
echo "Watching at ${interval}s intervals:   $1"
FILES=./*
for f in $FILES
do
   temp="$(mktemp ./temp/$f.XXXXXX)"
   md5sum "$1" > $temp
done

#  clamscan -r .|tail -n 9       #call the antivirus program