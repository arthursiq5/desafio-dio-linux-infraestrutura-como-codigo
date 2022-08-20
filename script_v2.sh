#!/bin/bash

echo "Atualizando servidor"
apt update -y && apt upgrade -y && apt dist-upgrade -y

echo "Instalando aplicações"
apt install apache2 -y unzip -y

echo "Baixando dados"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Seu servidor está configurado ;)"

