#!/bin/bash
#Report about a given directory path ending in /
#Includes list of items in directory, list of directories in directory, list of files in directory, largest file in directory, and files modifed less than two weeks ago
#Hannah 13/2/2020


list=$(ls $1)
dir=$(ls -d $1*/)
file=$(ls -Id $1*/)
large=$(find $1 -type f -printf '%s %p\n' | sort -nr | head -1)
recent=$(find $1 -type f -mtime -14 -ls)

echo list of items in directory: $list
echo list of directories in directory: $dir
echo list of files in directory: $file
echo biggest file: $large
echo files modified less than two weeks ago: $recent
