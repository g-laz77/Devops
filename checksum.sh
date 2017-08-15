#!/bin/bash
cd /root/website
mkdir checksum
for f in $("ls")
do
   if [[ -d $f ]]; then
     echo "$f is a directory"
   else
     touch checksum/$f.md5
     md5sum "$f"| awk '{ print $1 }' > checksum/$f.md5
   fi
done