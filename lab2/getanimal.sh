#!/bin/bash
# this script demonstrates using arays and getting user input

colours=("red" "green" "blue" "orange")
declare -A animals
animals=([red]="cardinal" [green]="frog" [blue]="lobster" [oragne]="cat")
numcolours=${#colours[@]}
read -p "Give me a number from 1 to $numcolours: " num
num=$((num - 1))
colour=${colour[$num]}
animal=${animals[$colour]}
echo "Index $numrequested finds a $colour $animal"
