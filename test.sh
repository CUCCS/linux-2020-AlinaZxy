#!/usr/bin/env bash

for file in homework4/*.sh;do
	if [[ $file =~ $0 ]];then
		continue
	fi
	bash "$file"
done
