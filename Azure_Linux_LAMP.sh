#!/bin/bash
echo "###################################################################################"
echo "         Iniciando a Instalacao do LAMP | Linux, Apache, MySQL, PHP                "
echo "###################################################################################"
sudo tee /etc/sudoers.d/$USER <<END
END
echo "###################################################################################"
echo "                          Atualizando Bibliotecas                                  "
echo "###################################################################################"

sudo apt-get update

echo "###################################################################################"
echo "                        Setando a senha do MY SQL                                  "
echo "###################################################################################"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password SENHA123'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password SENHA123'

echo "###################################################################################"
echo "                          Instalando o LAMP Server                                 "
echo "###################################################################################"

sudo apt-get install lamp-server^ -y

echo "###################################################################################"
echo "            Fim do Script | Obrigado! www.gustavomagella.com                       "
echo "###################################################################################"
