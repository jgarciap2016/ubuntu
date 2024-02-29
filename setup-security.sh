#
#   BIT @ BIT COMPUTADORAS
#   
#   JAVIER GARCÍA PÉREZ
#
#   SCRIPT DE CONFIGURACIÓN DE LINUX UBUNTU
#
#


sudo apt-get update
sudo apt-get upgrade


# "Se instalar componentes de seguridad y red";

sudo apt-get install firewalld
sudo apt-get install openvpn 
sudo apt-get install network-manager-openvpn 
sudo apt-get install slapd 
sudo apt-get install lapd-utils 
sudo apt-get install xinetd telnetd 
sudo apt-get install clamav 
sudo apt-get install rkhunter 
sudo apt-get install chkrootkit 
sudo apt-get install lynis 
sudo apt-get install vsftp 
sudo apt-get install netstat 
sudo apt-get install wget  
sudo apt-get install git 
sudo apt-get install nmcli 
sudo apt-get install nmtui 
sudo apt-get install iputils-ping 
sudo apt-get install arp 
sudo apt-get install dig 
sudo apt-get install nslookup 
sudo apt-get install traceroute 
sudo apt-get install nmap 
sudo apt-get install iptraf-ng 
sudo apt-get install sysstat 
sudo apt-get install lsscisi 
sudo apt-get install sysvconfig 
sudo apt-get install open-iscsi
sudo apt-get install filezilla


# Instalación de SAMBA
# "Se instalar paquetes del samba";
sudo apt-get install samba 
sudo apt-get install dpsyco-samba 
sudo apt-get install ebox-samba 
sudo apt-get install egroupware-sambaadmin 
sudo apt-get install smbclient 
sudo apt-get install samba-common 
sudo apt-get install samba-dbg 
sudo apt-get install samba-doc 
sudo apt-get install samba-doc-pdf 
sudo apt-get install system-config-samba


#Se instalan los paquetes de la consola externa
#"Se realizar la instalación del SSH Putty";
sudo apt-get install putty 
sudo apt-get install putty-tools 
sudo apt-get install putty-doc


#Se realiza la configuración del Cortafuegos
#"Inicio con la configuración del cortafuego";
sudo firewall-cmd --zone=public --add-port=21/tcp --permanent
sudo firewall-cmd --zone=public --add-port=22/tcp --permanent
sudo firewall-cmd --zone=public --add-port=23/tcp --permanent
sudo firewall-cmd --zone=public --add-port=24/tcp --permanent
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=53/tcp --permanent
sudo firewall-cmd --zone=public --add-port=139/tcp --permanent
sudo firewall-cmd --zone=public --add-port=389/tcp --permanent
sudo firewall-cmd --zone=public --add-port=445/tcp --permanent

# Se agregan los servicios necesarios

#sudo firewall-cmd --zone=public --add-sourc=macnum --permanent
# ** -- ** --


sudo firewall-cmd --set-default-zone=block

#se refuerza el estado de ssh
#sudo firewall-cmd --zone=public --add-forward-port=22 proto=tcp to port=22 ##Error
sudo firewall-cmd --zone=public --add-service=ssh --permanent
sudo firewall-cmd --zone=public --add-rich-rule='rule family=ipv4 source address=1.2.3.4/24 service name=ssh log prefix="SSH Access" level="notice" accept' --permanent

#Se instalan los servicios del cortafuegos
sudo firewall-cmd --zone=public --add-service=http --permanent
sudo firewall-cmd --zone=public --add-service=https --permanent

#Se integran las tarjetas de red de la computadora

sudo firewall-cmd --zone=public --change-interface=enp1s0f0
sudo firewall-cmd --zone=public --change-interface=virbr0

#Se inicia el firewall como servicio
sudo systemctl start firewalld
sudo systemctl reload firewalld
sudo systemctl enable firewalld
#sudo systemctl mask firewalld

sudo firewall-cmd --reload


#Se actualizan las definiciones del antivirus
#"Se actualizan las definiciones del antivirus";
sudo systemctl stop clamav-freshclam
sudo freshclam
sudo systemctl start clamav-freshclam

#Se actualiza el rkhunter
#"Se actualizan las definiciones del hunter";
sudo rkhunter --update

#Se descarga el archivo de configuración del VPN.
#"Inicio la descarga del script de configuración del VPN";
curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh

#Termina la ejecución de los comandos de la configuración
exit
