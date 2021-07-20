#!/bin/bash

for filename  in ./images/helkeyphotos/*.jpg; do
	echo "" > all.html #clears the file
	echo \<img src="${filename}" width="500" height="333"\> >> all.html
done
