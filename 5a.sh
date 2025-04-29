#!/bin/bash
for i in $(seq 2 100)
do
    is_prime=1
    for j in $(seq 2 $((i/2)))
    do
        if [ $((i % j)) -eq 0 ]
        then
            is_prime=0
            break
        fi
    done
    if [ $is_prime -eq 1 ]
    then
        echo $i
    fi
done
