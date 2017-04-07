#!bin/bash
#
#
# Autor:        Flavio Ferreira Bastos
# E-Mail:       flavio1605@bol.com.br
# Dt.Criação:   11/03/2017
# Autor:            Flavio Ferreira Bastos
# E-Mail:           flavio1605@bol.com.br
# Dt.Criação:       11/03/2017
# Versão:           1.0
##

# SISTEMA TEM A FINALIDADE DE AUTOMATIZAR A TAREFA DE COMPACTAÇÃO DE AQUIVOS

clear
Menu(){
echo "-----------------------------------"
echo "SISTEMA DE COMPACTAÇÃO DE AQUIVOS" 
echo "-----------------------------------"

echo "[1] Utilizar Compactador TAR"
echo "[2] Utilizar Compactador TAR+.GZ"
echo "[3] Utilizar Compactador TAR+.BZ2"
echo "[4] Visualizar conteudo do TAR"
echo "[5] Visualizar conteudo do TAR+.GZ"
echo "[6] Visualizar conteudo do TAR+.BZ2"
echo
echo -n "Qual opcao que desejada ?"
read opcao

case $opcao in
	1) CompactaTAR ;;
	2) CompactaTARGZ ;;
	3) CompactaTARBZ2 ;;
	4) VisualizaTAR ;;
	5) VisualizaTARGZ ;;
	6) VisualizaTARBZ2 ;;
 
esac
}

CompactaTAR(){
echo "Digirte o PATH que deseja realizar o TAR"
read TAR
tar -cvf $TAR
	Menu
}
	Menu
