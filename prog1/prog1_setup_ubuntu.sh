#!/bin/bash
# Ambiente de desenvolvimento para disciplina de Programacao 1 do primeiro periodo de computacao da UFCG

sudo apt-get update

#Tst
bash -c "$(curl -q -sSL http://bit.ly/tst-install)"
tst update

#Geany
sudo add-apt-repository ppa:geany-dev/ppa
sudo apt-get update
sudo apt-get install geany

#Pygame 
sudo apt-get install python-pygame
