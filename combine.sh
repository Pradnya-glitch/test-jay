#!bin/sh
mkdir -v folder1 timestamp
NAMESPACE=$(git diff --name-only <notMainDev> $(git merge-base <notMainDev> <mainDev>))
echo "$NAMESPACE"

foreach ($file in $NAMESPACE) {
    Copy-Item $file.FullName -Destination 'path/to/folder1'
}


cd timestamp
timestamp=$(date +'%m/%d/%Y')
echo $timestamp > abc.txt
cd ..

zip -r filename.zip /path/to/folder1