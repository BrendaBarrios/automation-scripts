# Este script instala ansible en un ubunto1804 que es una herramienta
# de aprovisionamiento tiene las caracteristicas de 
# un script pero mas legibles

# Para instalar ansible puedes ir a la pagina oficial de instalaciones de ansible
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
# aqui puedes encontrar las instrucciones de instalación para distintos sistemas operativos.


# En este script es la instalación de ansible en un debian porque ubuntu pertenece a debian ,las instrucciones estan en:
# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-debian


# El archivo /etc/apt/sources.list es usada para colocar los paquetes que usa debian se añadira el  paqueete para ansible.

echo 'Instalando paquete ansible'
sudo echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' | sudo tee -a /etc/apt/sources.list

# En algunos casos te pedira que que instales lo siguiente :
# sudo apt-get install dirmgr


sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

#Actualizas los paquetes
sudo apt update

# Instalación de ansible
sudo apt install ansible


# Para comprobar si se ha instalado solo escribe ansible
# y te lo autocompletara.
