#!/bin/bash
DIR=/root/archives
arquivos_auterado_ultima_hora=`find $DIR -mmin -720 -name "*.services"  | cut -c16-18 > Log_Servico`
seleciona_log=`cat /root/archives/Log_Servico | cut -c1-3`

function DeletaLinha {
        sed -i '/000/d' /root/archives/Log_Servico
}


for i in $arquivos_auterado_ultima_hora ; do
        sed -i '/000/d' /root/archives/Log_Servico

done

