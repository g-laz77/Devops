#!/bin/bash

logf="$1.log"

interval=2000

first_run=

# temp files, current and last md5s for diff to compare
lm1="$(mktemp /tmp/lm1.$$.XXXX)"
lm2="$(mktemp /tmp/lm2.$$.XXXX)"

if [ -z "$1" ]; then
        echo "No file specified, aborting" >&2
        exit 1
fi

echo "Watching at ${interval}s intervals:   $1"

# loop forever until cancel this script
while true; do

    md5sum "$1" > $lm1

    # otherwise in the first iteration,
    # lm2 does not yet exist, so diff
    # will always unintentionally report
    # a difference when comparing existing
    # file with nonexisting file
    if [ -z "$first_run" ]; then
        cp -a $lm1 $lm2
        first_run=1
    fi

    # test ! to invert usual exit code
    if ! diff $lm2 $lm1; then
        echo -e "$(date +"%F %R")\tChange detected:\t$1" | tee -a "$logf"
    fi

    # rotate
    #mv $lm1 $lm2

    sleep $interval

done

# when you ctrl-c it should garbage cleanup
trap "rm $lm1 $lm2; exit 1" SIGINT

 clamscan -r .|tail -n 9       #call the antivirus program