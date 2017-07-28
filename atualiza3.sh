#!/bin/bash
DATA_LOG=$(date)
HORA_LOG=`tail -n1 /root/archives/log.txt | grep Apache | cut -c8-15`
HORA_SISTEMA=`date | cut -c12-19`
DIR=/etc/httpd/conf
FILE=`find $DIR -mmin -60 -name "*.conf" | cut -c22-26`
LOG=/root/archives/log.txt

function restart {
        systemctl restart httpd.service
}

while [ $FILE='*.conf' ] ; do

   if [ -z $FILE ] ; then
         echo "$DATA_LOG :: NÃO EXISTE SERVIÇO A SER INICIADO" >> $LOG
         exit
   elif [ $FILE='*.conf' ] ; then
         echo "$DATA_LOG :: SERVIÇO HTTPD.SERVICES REINICIADO"  >> $LOG
         restart
         tail -n4 /var/log/messages | grep "Apache" >> $LOG
         exit

    elif [ $HORA_LOG -lt $HORA_SISTEMA ] && [ $FILE='*.conf' ] ; then
                echo "$DATA_LOG ::  SERVICO JA FOI REINICIADO" >> $LOG
    exit


    fi



done
