#!/bin/sh
mkdir -v bosbuisness timestamp

git clone https://github.com/devopssessionsjvr/bos-business.git

val=git rev-parse HEAD

NAMESPACE=git diff-tree --no-commit-id --name-only -r $val

echo "$NAMESPACE"

git show $val:$NAMESPACE > pre.txt

cd timestamp

timestamp=$(date +'%m/%d/%Y')

echo $timestamp > abc.txt

cd ..

zip -r filename.zip /path/of/folder/you/want
