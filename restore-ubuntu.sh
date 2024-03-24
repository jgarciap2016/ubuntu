# Después de reinstalar Ubuntu, restaurar la lista de paquetes
sudo apt-get update
sudo apt-get install $(cat lista_de_paquetes.txt)
