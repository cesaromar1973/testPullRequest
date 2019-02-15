#!/bin/bash

wget -O master.zip https://github.com/melvyniandrag/lorem/archive/master.zip
if [[ $? -ne 0 ]]; then
    echo "wget failed"
    exit 1; 
fi


if [[ "x$?" == "x0" ]];
then
    echo "Bad master.zip found"
    exit 1;
fi


if [ unzip -t "$master.zip" ]
then
    echo "Unable to unzip"
    exit 1;
fi
rm $master.zip


wordCount=$  grep -c ^ master.zip
echo "Found $wordCount many words."