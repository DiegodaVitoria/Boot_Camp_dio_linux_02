#!/bin/bash

echo "Atualizando e Instalando addons no servidor........."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install git -y

echo "Criando diretorio e baixando projeto do Repositorio GIT........."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo"
unzip main.zip
cd linux-site-dio-main

echo "Enviando arquivos para o diretorio do apache"
cp -R * /var/www/html/

echo "Processo encerrado......"


