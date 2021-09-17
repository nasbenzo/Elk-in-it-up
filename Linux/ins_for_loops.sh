#!/bin/bash

for file in $(ls)
do
    ls -lah $file
done


# display the number if it's a 1 or 4
for num in {0..5}
do
   if [ $num = 1] || [ $num = 4 ]
   echo $num
done
