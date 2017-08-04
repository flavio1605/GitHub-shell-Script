#!/bin/bash
DIR=/root/archives/
teste=`tail -n1 /var/log/messages | grep Apache | cut -c8-15  >>  /root/archives/log.txt`
for i in $(cat /root/archives/Log_Servico | cut -c1-3); do
        systemctl stop httpd.service
        $teste
        systemctl start httpd.service






        #tail -n1 /var/log/messages | grep Apache | cut -c8-15  >>  /root/archives/log.txt


done


