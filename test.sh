#!/usr/bin/env bash

for file in ./*.sh;do
	if [[ $file =~ $0 ]];then
		continue
	fi
	bash "$file"
done
