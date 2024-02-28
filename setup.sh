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

echo "Se hace instalación de los programs del SERVER";
sudo apt-get install -y xorg
sudo apt-get install -y openbox openbox-themes obconf obmenu oblogout obtint2 xcompmgr
sudo apt-get install -y nitrogen
sudo apt-get install -y pcmanfm
sudo apt-get lxAppearance Urxvt Conky

echo "se Instala el firefox Mozilla";
sudo apt-get install firefox

echo "Se instalan aplicaciones";
sudo apt-get install -y kate
sudo apt-get install -y cairo-dock cairo-dock-plug-ins


echo "Se instalar componentes de seguridad y red";

sudo apt-get install -y firewalld
sudo apt-get install -y openvpn network-manager-openvpn 
sudo apt-get install -y slapd lapd-utils 
sudo apt-get install -y xinetd telnetd 
sudo apt-get install -y clamav 
sudo apt-get install -y rkhunter 
sudo apt-get install -y chkrootkit 
sudo apt-get install -y lynis 
sudo apt-get install -y vsftp 
sudo apt-get install -y netstat 
sudo apt-get install -y wget 
sudo apt-get install -y curl 
sudo apt-get install -y git 
sudo apt-get install -y nmcli nmtui 
sudo apt-get install -y iputils-ping 
sudo apt-get install -y arp 
sudo apt-get install -y dig 
sudo apt-get install -y nslookup 
sudo apt-get install -y traceroute 
sudo apt-get install -y nmap 
sudo apt-get install -y iptraf-ng 
sudo apt-get install -y sysstat 
sudo apt-get install -y lsscisi 
sudo apt-get install -y sysvconfig 
sudo apt-get install -y open-iscsi
sudo apt-get install filezilla


# Instalación de SAMBA
echo "Se instalar paquetes del samba";
sudo apt-get install -y samba dpsyco-samba ebox-samba egroupware-sambaadmin smbclient samba-common samba-dbg samba-doc samba-doc-pdf system-config-samba


#Se instalan los paquetes de la consola externa
echo "Se realizar la instalación del SSH Putty";
sudo apt-get install putty putty-tools putty-doc

echo "Se configura el inicio del escritorio de OpenBox";
curl -O https://raw.githubusercontent.com/jgarciap2016/ubuntu/main/autostart.sh
mkdir /home/jgarciap3030/.config/openbox
cp autostart.sh /home/jgarciap3030/.config/openbox



#Se realiza la configuración del Cortafuegos
echo "Inicio con la configuración del cortafuego";
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
sudo firewall-cmd --zone=public --add-forward-port=22 proto=tcp to port=22 ##Error
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
echo "Se actualizan las definiciones del antivirus";
sudo systemctl stop clamav-freshclam
sudo freshclam
sudo systemctl start clamav-freshclam

#Se actualiza el rkhunter
echo "Se actualizan las definiciones del hunter";
sudo rkhunter --update

#Se descarga el archivo de configuración del VPN.
echo "Inicio la descarga del script de configuración del VPN";
curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh

#Se configura el openvpn por medio de menú
echo "Configuración del VPN";
./openvpn-install.sh


#Termina la ejecución de los comandos de la configuración
exit
