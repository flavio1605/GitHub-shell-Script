# ~/.bashrc:executed by bash(1) for non-login shells.
#
# Author        : Flavio Ferreira Bastos
# E-mail        : flavio1605@bol.com.br
# Data Criaçao  : 24/03/2017
#
## Cores
Preto='\[\033[01;30m\]'
Vermelho='\[\033[01;31m\]'
Verde='\[\033[01;32m\]'
Amarelo='\[\033[01;33m\]'
Azul='\[\033[01;34m\]'
Roxo='\[\033[01;35m\]'
Ciano='\[\033[01;36m\]'
Cinza='\[\033[01;37m\]'
Branco='\[\033[01;38m\]'
#
export PS1="$Ciano\u$Cinza@$Roxo\h$Azul:\w$Cinza# \[\033[00m\]"
#
# Você pode descomentar as seguintes linhas se você quiser 'ls' colorido
export LS_OPTIONS='--color=auto'
eval `dircolors`
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
#
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
#
alias users="awk -F: '(\$3 > 999) {print \$1}' /etc/passwd"
#
export HISTSIZE=1000
export HISTCONTROL='erasedups'
export HISTTIMEFORMAT='%d-%m-%y %H:%M'
########################################################
