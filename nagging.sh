#!/bin/bash

base="${HOME}/lattice_painter"

year=$(date +%Y)

month=$(date +%m)

day=$(date +%d)

hour=$(date +%H)

min=$(date +%M)

[ ! -d $base ] && echo "${base} not existed" && exit 127

t=${base}/rubbish/${year}/${month}

[ ! -d "$t" ] && mkdir -p $t

echo "balabala ${hour}-${min}" >> $t/$day

cd $base
git pull && git add . && git commit -m "update ${year}/${month}/${day} - ${hour}:${min}" && git push
