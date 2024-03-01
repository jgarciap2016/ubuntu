#
#   BIT @ BIT COMPUTADORAS
#   
#   JAVIER GARCÍA PÉREZ
#
#   SCRIPT DE CONFIGURACIÓN DE LINUX UBUNTU
#
#

 
sudo add-apt-repository ppa:nemh/gambas3 
sudo add-apt-repository ppa:sebikul/gambas-daily
sudo add-apt-repository ppa:gambas-team/gambas3

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 73C62A1B
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 391BD338

sudo apt-get update

sudo apt-get install gambas3
