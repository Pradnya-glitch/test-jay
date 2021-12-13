#Gives latest commit id
#!bin/sh
id = git ls-remote --heads "repo_url"

values = git diff-tree - -no-commit-I’d - - name-only -r $id

cp values /path/to/folder/where/you/want/to/copy