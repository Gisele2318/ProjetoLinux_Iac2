#!/bin/bash

apt-get update > /dev/null
apt-get upgrade -y > /dev/null
echo "Servidor atualizado com sucesso!"

apt-get install apache2 -y > /dev/null 
apt-get install unzip -y > /dev/null
echo "Apache e Unzip atualizados com sucesso!"

systemctl restart apache 2
echo "Apache reinicializado!"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip 
cd linux-site-dio-main
cp -R * /var/www/html/
echo "O Script foi executado com sucesso!"

