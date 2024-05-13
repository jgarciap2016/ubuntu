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
sudo apt-get install xinetd 
sudo apt-get install telnetd 
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
sudo apt-get install fail2ban
sudo apt-get install iptable-persistent

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

sudo firewall-cmd --zone=public --add-source=192.168.0.0 --permanent
sudo firewall-cmd --zone=public --add-source=192.168.0.1/24 --permanent
sudo firewall-cmd --zone=public --add-source=192.168.0.25 --permanent

#sudo firewall-cmd --zone=public --add-sourc=macnum --permanent
# ** -- ** --
sudo firewall-cmd --zone=public --add-source=F2:AF:85:A1:6A:57 --permanent
sudo firewall-cmd --zone=public --add-source=A8:49:4D:F1:D4:F2 --permanent
sudo firewall-cmd --zone=public --add-source=58:CB:52:A6:CA:9C --permanent
sudo firewall-cmd --zone=public --add-source=EC:A8:1F:E0:60:C8 --permanent
sudo firewall-cmd --zone=public --add-source=E0:E1:A9:06:53:69 --permanent
sudo firewall-cmd --zone=public --add-source=A8:49:4D:F1:D4:F0 --permanent
sudo firewall-cmd --zone=public --add-source=FE:A6:21:69:4D:6B --permanent
sudo firewall-cmd --zone=public --add-source=A4:6D:A4:3D:D2:E0 --permanent
sudo firewall-cmd --zone=public --add-source=60:6C:63:1A:6E:FE --permanent
sudo firewall-cmd --zone=public --add-source=C2:68:CC:12:A4:C9 --permanent
sudo firewall-cmd --zone=public --add-source=84:D8:1B:9F:6F:BA --permanent
sudo firewall-cmd --zone=public --add-source=94:04:E3:BD:4C:58 --permanent
sudo firewall-cmd --zone=public --add-source=B0:48:7A:D9:29:DE --permanent
sudo firewall-cmd --zone=public --add-source=40:0F:C1:24:7E:40 --permanent
sudo firewall-cmd --zone=public --add-source=8C:6A:8D:39:F9:10 --permanent
sudo firewall-cmd --zone=public --add-source=E8:F6:54:4B:6A:24 --permanent
sudo firewall-cmd --zone=public --add-source=50:4E:DC:82:D8:70 --permanent
sudo firewall-cmd --zone=public --add-source=58:BE:72:E6:57:62 --permanent
sudo firewall-cmd --zone=public --add-source=58:BE:72:E6:57:60 --permanent



sudo firewall-cmd --set-default-zone=block

#se refuerza el estado de ssh
#sudo firewall-cmd --zone=public --add-forward-port=22 proto=tcp to port=22 ##Error
sudo firewall-cmd --zone=public --add-service=ssh --permanent
#sudo firewall-cmd --zone=public --add-rich-rule='rule family=ipv4 source address=1.2.3.4/24 service name=ssh log prefix="SSH Access" level="notice" accept' --permanent

#Se instalan los servicios del cortafuegos
sudo firewall-cmd --zone=public --add-service=http --permanent
sudo firewall-cmd --zone=public --add-service=https --permanent



#Se integran las tarjetas de red de la computadora

sudo firewall-cmd --zone=public --change-interface=enp1s0f0
sudo firewall-cmd --zone=public --change-interface=virbr0


sudo iptables -I INPUT -S 192.168.0.0 -j ACEPT
sudo iptables -I INPUT -S 192.168.0.1 -j ACEPT
sudo iptables -I INPUT -S 192.168.0.25 -j ACEPT
sudo iptables -A INPUT -m iprange --src-range 192.168.0.2-192.168.0.24 -j DROP
sudo iptables -A INPUT -m iprange --src-range 192.168.0.24-192.168.255.255 -j DROP




#Se inicia el firewall como servicio
sudo systemctl start firewalld
sudo systemctl reload firewalld
sudo systemctl enable firewalld
#sudo systemctl mask firewalld

sudo firewall-cmd --reload

sudo systemctl enable --now firewalld


#Se actualizan las definiciones del antivirus
#"Se actualizan las definiciones del antivirus";
#sudo systemctl stop clamav-freshclam
#sudo freshclam
sudo systemctl start clamav-freshclam

#Se actualiza el rkhunter
#"Se actualizan las definiciones del hunter";
sudo rkhunter --update

#Se descarga el archivo de configuración del VPN.
#"Inicio la descarga del script de configuración del VPN";
#curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
#chmod +x openvpn-install.sh

#Termina la ejecución de los comandos de la configuración
exit
