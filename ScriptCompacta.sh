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

############# DESCRIÇÃO DA FERRAMENTA #############
# SISTEMA TEM A FINALIDADE DE AUTOMATIZAR A TAREFA DE COMPACTAÇÃO DE ARQUIVOS

clear
Menu(){
echo "-----------------------------------"
echo "SISTEMA DE COMPACTAÇÃO DE AQUIVOS" 
echo "-----------------------------------"

echo "[1] Utilizar Compactador para .tar"
echo "[2] Utilizar Compactador para .tar.gz"
echo "[3] Utilizar Compactador para .tar.bz2"
echo "[4] Visualizar conteudo do .tar"
echo "[5] Visualizar conteudo do .tar.gz"
echo "[6] Visualizar conteudo do .tar.bz2"
echo
echo -n "Qual opcao que desejada ?"
read opcao

case $opcao in
	1) CompactaTAR ;;
	2) CompactaTARGZ ;;
	3) CompactaTARBZ2 ;;
	4) DescompactarTAR ;;
	5) DescompactarTARGZ ;;
	6) DescompactarTARBZ2 ;;
	7) VisualizaTAR ;;
	8) VisualizaTARGZ ;;
	9) VisualizaTARBZ2 ;;
 
esac
}

CompactaTAR(){
clear
echo -n "Digite o PATH onde esta o arquivo:"
read DIRETORIO
echo -n "Digite o nome do arquivo: " 
read ARQUIVO
COMPACTAR="$DIRETORIO/$ARQUIVO"
   
   
tar -cvf $ARQUIVO.tar $COMPACTAR 2> /dev/null
  if [ $? -eq 0 ]; then
     echo "Arquivo compactado"
     sleep 2
     clear
  else
     echo "Arquivo não foi compactado"
     clear
  fi  
 Menu
}

CompactaTARGZ(){
clear
echo -n "Digite o PATH onde esta o arquivo:"
read DIRETORIO
echo -n "Digite o nome do arquivo: "
read ARQUIVO
COMPACTAR="$DIRETORIO/$ARQUIVO"

tar -cvzf $ARQUIVO.tar.gz $COMPACTAR 2> /dev/null
  if [ $? -eq 0 ]; then
     echo "Arquivo compactado"
     sleep 2
     clear
  else
     echo "Arquivo não foi compactado"
     clear
  fi
Menu
}

CompactaTARBZ2(){
clear
echo -n "Digite o PATH onde esta o arquivo: "
read DIRETORIO
echo -n "Digite o nome do arquivo: "
read ARQUIVO
COMPACTAR="$DIRETORIO/$ARQUIVO"

tar -cvjf $ARQUIVO.bz2 $COMPACTAR 2> /dev/null
  if [ $? -eq 0 ]; then
     echo "Arquivo compactado"
     sleep 2
     clear
  else
     echo "Arquivo não foi compactado"
     clear
  fi
Menu
}

DescompactarTAR(){
clear
echo -n "Digite o PATH onde esta o arquivo:"
read DIRETORIO
echo -n "Digite o nome do arquivo.tar: "
read ARQUIVO
CAMINHO="$DIRETORIO/$ARQUIVO"
   
tar -xvf $CAMINHO
  if [ $? -eq 0 ]; then
     echo "Arquivo descompactado no diretorio corrente."
  else
     echo "Erro! arquivo não foi descompactado"
  fi
   sleep 2
   clear
Menu
}

DescompactarTARGZ(){
clear
echo -n "Digite o PATH onde esta o arquivo: "
read DIRETORIO
echo -n "Digite o nome do arquivo.tar: "
read ARQUIVO
CAMINHO="$DIRETORIO/$ARQUIVO"

tar -xvzf $CAMINHO
  if [ $? -eq 0 ]; then
     echo "Arquivo descompactado no diretorio corrente."
  else
     echo "Erro! arquivo não foi descompactado"
  fi
     sleep 2
     clear
Menu
}

DescompactarTARBZ2(){
clear
echo -n "Digite o PATH onde esta o arquivo: "
read DIRETORIO
echo -n "Digite o nome do arquivo.tar: "
read ARQUIVO
CAMINHO="$DIRETORIO/$ARQUIVO"

tar -xjf $CAMINHO
  if [ $? -eq 0 ]; then
     echo "Arquivo descompactado no diretorio corrente."
  else
     echo "Erro! arquivo não foi descompactado"
   fi
     sleep 2
     clear
Menu
}


VisualizaTAR(){
clear
echo -n "Digite o PATH onde esta o arquivo: "
read DIRETORIO
echo -n "Digite o nome do arquivo.tar: "
read ARQUIVO
CAMINHO="$DIRETORIO/$ARQUIVO"


tar -tf $CAMINHO


Menu
}

VisualizaTARGZ(){

clear
echo -n "Digite o PATH onde esta o arquivo: "
read DIRETORIO
echo -n "Digite o nome do arquivo.tar: "
read ARQUIVO
CAMINHO="$DIRETORIO/$ARQUIVO"


tar -tf $CAMINHO

Menu
}


VisualizaTARBZ2(){



Menu
}





Menu
