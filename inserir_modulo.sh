#!/bin/bash
#
# Autor:        Flavio Ferreira Bastos
# E-Mail:       flavio.bastos@softwareexpress.com.br
# Dt.Criação:   11/03/2017
# Autor:        Flavio Ferreira Bastos
# Versão:       1.0
#
############# DESCRIÇÃO DA FERRAMENTE ###############
# Finalidade do script facilitar inserção de modulos no fepas
#
PATH_RAIZ=Softwareexpress/fepas-cardse-modular/modulos/
ARQ_PADRAO=/home/flavio/arquivos_fepas/


cp arquivos_fepas/*.ini Softwareexpress/fepas-cardse-modular/modulos/009_stelo/ini/

clear
Menu(){
echo "-----------------------------------------"
echo "SISTEMA DE INSERÇÃO DE MODULOS DO FEPAS |" 
echo "-----------------------------------------"
echo "[1] Incluir modulo no fepas"
echo "[2] Remove Usuario"
echo "[3] Criar Grupo"
echo
echo -n "Qual opcao que desejada ?"
read opcao

case $opcao in
	1) inserir_modulo ;;

esac

}
inserir_modulo(){
echo "Digite o nome do modulo que deseja criar"
read nome_modulo
	if [ -d "$PATH_RAIZ/$nome_modulo" ]  
	then 
		echo "Verificando existecia do modulo"
		sleep 3
		echo "modulo ja existe"
		sleep 3
		clear
     Menu
	 else 
        	echo "Aguarde criando modulo...."
			sleep 3
			sudo mkdir -p $PATH_RAIZ/$nome_modulo/ini/
			sudo cp  $ARQ_PADRAO/*.ini  $PATH_RAIZ/$nome_modulo/ini/  
			sudo cp  $ARQ_PADRAO/*.cfg  $PATH_RAIZ/$nome_modulo/ini/
			echo "modulo $nome_modulo criando"
	fi	
}

Menu


