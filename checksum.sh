#!/bin/bash
cd /root/website
mkdir checksum
for f in $("ls")
do
   echo "$f"
   touch checksum/$f.md5
   md5sum "$f"| awk '{ print $1 }' > checksum/$f.md5
done