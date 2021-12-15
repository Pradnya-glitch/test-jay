new-item timestamp -itemtype directory
new-item folder1 -itemtype directory

modifiedFiles = git diff --name-only <notMainDev> $(git merge-base <notMainDev> <mainDev>)


For each modifiedFiles

BEGIN LOOP

    Copy-Item  ForEach-Object \path\to\folder1

END LOOP


cd timestamp

timestamp=$(get-date -f yyyy-MM-dd)
echo $timestamp > abc.txt
cd ..

Compress-Archive -Path \path\of\folder1 -DestinationPath \path\to\zip\file

##to run this file type .\combine.ps1