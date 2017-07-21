#!/bin/bash
cd /root/website
mkdir checksum
for f in $("ls")
do
   echo "$f"
   touch temp/$f.md5
   md5sum "$f" > checksum/$f.md5
done