#!/bin/bash

TODAY=`date +%F`
NOW=`date +"%F.%T"`

mtr --report-wide -c 20 --show-ips www.cloudflare.com 2>&1 >>mtr_$TODAY

echo >>mtr_$TODAY

git add -A && git commit -a -m "$NOW add measurement" && git push
