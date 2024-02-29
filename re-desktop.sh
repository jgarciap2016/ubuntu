#
#   BIT @ BIT COMPUTADORAS
#   
#   JAVIER GARCÍA PÉREZ
#
#   SCRIPT DE CONFIGURACIÓN DE LINUX UBUNTU
#
#


# Cambio al superusuario
sudo su

# Se actualizan los archivos del sistema
sudo apt-get update && sudo apt-get upgrade

# Se instalan los programas del escritorio
sudo apt-get install --reinstall xorg -y
sudo apt-get install --reinstall openbox -y
sudo apt-get install --reinstall obconf -y
sudo apt-get install --reinstall obmenu -y
sudo apt-get install --reinstall tint2 -y
sudo apt-get install --reinstall nitrogen -y
sudo apt-get install --reinstall conky -y
sudo apt-get install --reinstall xcompmgr -y

# Se instalan aplicaciones del sistema
sudo apt-get install --reinstall pcmanfm -y
sudo apt-get install --reinstall cairo-dock -y
sudo apt-get install --reinstall cairo-dock-plug-ins -y
sudo apt-get install --reinstall kate -y

sudo apt-get install --reinstall firefox -y

# Se instala el openGL
sudo apt-get install --reinstall freeglut3 -y
sudo apt-get install --reinstall freeglut3-dev -y

# Se configura el openbox
cd .config
mkdir openbox
cd openbox

curl -O https://raw.githubusercontent.com/jgarciap2016/ubuntu/main/autostart.sh

cd ..
cd ..

sudo apt-get install --reinstall xinit -y


#Termina la ejecución de los comandos de la configuración
exit
