#!/bin/bash
read -p "Enter temperature in Fahrenheit: " fahrenheit
celsius=$(echo "scale=2; ( $fahrenheit - 32 ) * 5 / 9" | bc)
echo "$fahrenheit degrees Fahrenheit is equal to $celsius degrees Celsius"
