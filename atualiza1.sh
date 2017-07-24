#!/bin/bash
DIR=/root/archives/
#FILE=`find /root/archives/  -mmin -3000 | grep *.txt | cut -c21,22,23,24`

FILE=`find ${DIR} -mmin -1 | grep *.txt`

if [ $FILE='*.txt' ] ; then
 echo "ARQUIVO ENCONTRADO"
else
 echo "ARQUIVO NÃO ENCONTRADO"
fi;
