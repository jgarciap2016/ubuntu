dpkg --get-selections | awk '$2 ~ /^install$/ {print $1}' > lista_de_paquetes.txt
