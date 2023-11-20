#!/bin/bash

echo "Verificando as atualizações pendentes do servidor...."

apt-get update

echo "Efetuando a atualização de todos os pacotes pendentes..."

apt-get upgrade -y

echo "Instalando o Apache2 no servidor..."

apt-get install apache2 -y

echo "Instalando o unzip no servidor..."

apt-get install unzip -y

echo "acessando o diretório tmp e efetuando o Download do projeto"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o .zip do projeto"

unzip main.zip

echo "Acessando o diretório do projeto"

cd linux-site-dio-main

echo "Copiando o projeto ao diretório padrão do Apache"

cp -R * /var/www/html

echo "Finalizando o script com sucesso"

