#!/bin/bash
DIR=/root/archives/
seleciona_log=`cat /root/archives/Log_Servico | cut -c1-3`

for i in $seleciona_log ; do
   systemctl stop httpd.service
   systemctl start httpd.service
   tail -n1 /var/log/messages | grep Apache | cut -c8-15 >>  /root/archives/log.txt

done

