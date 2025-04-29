#!/bin/bash

echo "Enter a four-digit number: "
read num
    first_digit=$((num/1000))
    last_digit=$((num%10))
    
    sum=$((first_digit + last_digit))
    
    echo "Sum of first ($first_digit) and last ($last_digit) digit: $sum"
