#!/bin/bash

for file in *.zst;
do
	echo $file
	sudo pacman -U --noconfirm $file
done


