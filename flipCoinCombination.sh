#!/bin/bash

declare -A singlet

heads=0
tails=0

for ((i=1; i<=100; i++))
do
  result=$((RANDOM % 2))

  if [ $result -eq 0 ]; then
    heads=$((heads + 1))
    singlet[Heads]=$heads
  else
    tails=$((tails + 1))
    singlet[Tails]=$tails
  fi
done

total=$((heads + tails))
for key in "${!singlet[@]}"
do
  percentage=$((100 * ${singlet[$key]} / $total))
  echo "$key percentage: $percentage%"
done
