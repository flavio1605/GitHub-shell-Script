#!/bin/bash
#
# Autor		: Flavio Ferreira Bastos
# E-Mail	: <flavio1605@bol.com.br>
# Data Criacao	: 24/03/2017
#
#
#
#
###################################################

clear
Menu(){
echo "---------------------------------------------"
echo "SISTEMA DE ADMINISTRACAO DE USUARIOS E GRUPOS"
echo "---------------------------------------------"

echo "[1] Adicionar Usuario"
echo "[2] Remove Usuario"
echo "[3] Criar Grupo"
echo "[4] Remover Grupo"
echo "[5] Adicionar Usuario ao Grupo"
echo "[6] Remover Usuario do Grupo"
echo
echo -n "Qual opcao que desejada ?"
read opcao


case $opcao in
	1) AddUsuario ;;
	2) RmUsuario ;;
	3) AddGrupo ;;
	4) RmGrupo ;;
	5) AddUserGrupo ;;
	6) RmUserGrupo ;;
 
esac

}

AddUsuario(){
echo "Digirte o nome do usuario"
read usuario
adduser $usuario
	Menu
}

RmUsuario(){
echo "Digirte o nome do usuario á remover"
read usuario
userdel -r $usuario

	Menu
}

AddGrupo(){
echo "Digirte o nome do usuario á remover"
read addgroups
groupadd $addgroups
	Menu

}


RmGrupo(){
echo "Digirte o nome do usuario á remover"
read grupo
groupdel $grupo
	Menu

}

AddUserGrupo(){

echo "Digirte o nome do usuario que deseja adicionar ao grupo"
read usuario

echo "Digirte o nome do grupo"
read grupo
gpasswd -a $usuario $grupo
	Menu
}

RmUserGrupo(){
echo "Digirte o nome do usuario que deseja remover do grupo"
read usuario
echo "Digirte o nome do grupo"
read grupo
gpasswd -d $usuario $grupo
	Menu
}
Menu
