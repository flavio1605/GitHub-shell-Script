
#!/bin/bash
LIMITE=00
MIN=`date | cut -d" " -f4 | cut -d: -f2`
DIR=/root/archives/
FILE=`find ${DIR}  -mmin -1 | grep *.txt`

#while [ $MIN -ne $LIMITE ] ; do
  if [ $FILE='*.txt' ] ; then
      echo "$FILE"
  else
      echo "ARQUIVO NÃO DISPONIVEL"
  fi
#  sleep $((01))
#done

