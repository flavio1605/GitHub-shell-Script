#!/bin/bash
echo "digite nome"
read nome

for i in `tail -1 lista`; do
 count=`expr $i + 1`
 echo `printf "%03d\n" $count`_$nome

done
