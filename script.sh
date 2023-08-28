#!/bin/bash

echo "Atualizando o servidor..."
sudo apt-get update
sudo apt-get upgrade -y

echo "Instalando o apache2"
sudo apt-get install apache2 -y

echo "Instalando o unzip"
sudo apt-get install unzip -y

echo "Baixando Aplicação no diretorio tmp"
cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo Aplicação no diretorio tmp"
sudo unzip main.zip

echo "Copiando Aplicação do /tmp para o diretorio do Apache"
cd linux-site-dio-main
sudo cp * -R /var/www/html
