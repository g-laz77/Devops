#!/bin/bash
echo "eh"
for f in $("ls")
do
   echo "$f"
   touch temp/$f.md5
   md5 "$f" > temp/$f.md5
done

#  clamscan -r .|tail -n 9       #call the antivirus program