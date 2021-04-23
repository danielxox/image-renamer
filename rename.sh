#!/bin/bash
n=0
for i in *.jpg *.png *.gif
do
    ext="$(echo "$i" | sed 's/.*\.//g')"
    num_str="$(printf "%03d" $n)"
    mv "$i" "soy${num_str}.${ext}"
    n="$(expr 1 + $n)"
done