#!/bin/bash

base="${HOME}/lattice_painter/"

year=$(date +%Y)

month=$(date +%m)

day=$(date +%d)

hour=$(date +%H)

min=$(date +%M)

[ ! -f $base ] && echo "${base} not existed" && exit 127

t=${base}/rubbish/${year}/${month}

[ ! -d "$t" ] && mkdir -p $t

echo "balabala ${hour}-${min}" >> $t/$hour

cd $base
git add . && git commit -m "update ${year}/${month}/${day} - ${hour}:${min}" && git push
