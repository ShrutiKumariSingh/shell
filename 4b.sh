#!/bin/bash
echo "Enter a sentence:"
read sentence
blank_count=$(echo "$sentence" | grep -o " " | wc -l)
echo "Number of blanks in the sentence: $blank_count"
