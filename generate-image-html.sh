#!/bin/bash
echo "" > all.html #clears the file
for filename  in ./images/helkeyphotos/*.jpg; do
	echo \<img src="${filename}" width="500" height="333"\> >> all.html
done
