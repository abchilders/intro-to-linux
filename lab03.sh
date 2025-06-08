#!/bin/bash
echo Hello World
echo Enter a word of your choice.
read word
echo "You entered the word: ${word}"

echo Enter the name of a file.
read file

echo "Here is the word count information on ${file}"
wc lab03.txt

echo "Searching for the word ${word} in the file ${file}:"

grep ${word} ${file}

if [ $? -eq 0 ]; then
	echo Word found!
else
	echo Word not found.
fi
