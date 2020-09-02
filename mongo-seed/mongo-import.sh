#!/bin/sh
for f in /mongo-seed/*.csv
do
    filename=$(basename "$f")
    extension="${filename##*.}"
    filename="${filename%.*}"
    mongoimport -h mongodb_container:27017 -u root -p rootpassword --authenticationDatabase admin -d Northwind -c "$filename" --type csv --file "$f" --headerline
done