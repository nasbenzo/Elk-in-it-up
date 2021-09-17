#!/bin/bash

# Create Variables
nums=$(echo {0..9})
ls_out=$(ls)

execs=$(find /home -type f -perm 777 2>/dev/null)

for num in ${nums[@]}; do
   if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]; then
	echo $num
   fi
done

# list variables
states=('Hawaii' 'Nebraska' 'Flordia' 'California' 'New York')

# Create a loop that looks for 'Hawaii'
for state in ${states[@]}; do
   if [ $state == 'Hawaii' ]; then
	echo "Hawaii is the best!"
   else
	echo "I'm not fond of Hawaii"
fi
done
