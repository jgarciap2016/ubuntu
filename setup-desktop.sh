#
#   BIT @ BIT COMPUTADORAS
#   
#   JAVIER GARCÍA PÉREZ
#
#   SCRIPT DE CONFIGURACIÓN DE LINUX UBUNTU
#
#

# Me cambio al superusuario


# Se actualizan los archivos del sistema
sudo apt-get update && sudo apt-get upgrade

# Se instalan los programas del escritorio
sudo apt-get install xorg
sudo apt-get install openbox 
sudo apt-get install obconf 
sudo apt-get install obmenu 
sudo apt-get install tint2
sudo apt-get install oblogout
sudo apt-get install obkey
sudo apt-get install compton
sudo apt-get install network-manager-applet
sudo apt-get install lxappearence 
sudo apt-get install nitrogen
sudo apt-get install conky
sudo apt-get install xcompmgr

# Se instalan aplicaciones del sistema
sudo apt-get install pcmanfm
sudo apt-get install cairo-dock
sudo apt-get install cairo-dock-plug-ins
sudo apt-get install kate

sudo apt-get install firefox

# Se instala OpenGl
sudo apt-get install freeglut3
sudo apt-get install freeglut3-dev
sudo apt-get install binutils-gold

# Se configura el openbox

sudo apt-get install xinit



#Termina la ejecución de los comandos de la configuración
exit
