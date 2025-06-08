#!/bin/bash
# Week 05 Lab
# Brandon Gardner and Alex Childers

echo -n "Enter the name of an input file. "
read input_filename
echo -n "Enter a word to be filtered out. "
read to_filter
word_counter=0
output_file="lab05out.txt"
echo " " > ${output_file}

while read next_line; do
	for next_word in ${next_line}; do
		if [ ${next_word} = ${to_filter} ]; then
			word_counter=`expr ${word_counter} + 1`
		elif [ ${next_word} != ${to_filter} ]; then
			echo ${next_word} >> ${output_file}
		fi
	done
done < ${input_filename}

echo "The word ${to_filter} was found in the file ${input_filename} a total of ${word_counter} times."
more ${output_file}
exit 0
