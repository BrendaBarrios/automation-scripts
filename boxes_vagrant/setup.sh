# Este script sirve para instalar una maquina de ubuntu1804.


#Inicializar una maquina virtual en vagrant, instalar el .deb del sitio de vagrant
ls  -l Vagrantfile
# Si no encuentra el vagrant file ejecuta el vagrant init.
vagrant init generic/ubuntu1804
if [$? -ne 0]
then
    echo 'Iniciando nuevo proyecto vagrant'
    vagrant init generic/ubuntu1804
fi
# Para este comando se necesita tener instalado virtualbox, ejemplo:
# wget --document=vbox.deb https://download.virtualbox.org/virtualbox/6.1.4/virtualbox-6.1_6.1.4-136177~Ubuntu~bionic_amd64.deb
# sudo dpkg -i vbox.deb

# Si no funciona virtualbox, ejecutar
# VBoxManage --version
# Podria decir que se debe ejecutar:
# sudo /sbin/vboxconfig

# Si vuelves a ingresar el comando vagrant up y sigue sin 
# funcionar ahora ejecuta de nuevo
# sudo /sbin/vboxconfig

# A veces es necesario instalar:
# sudo apt install gcc make perl
# Despues de esa configuración se debe reiniciar hacer una configuración al arranque si se usa UEFI



echo 'Vagrant up'
vagrant up
echo 'Conectando a vagrant'
vagrant ssh
#sudo echo '<link>' >> /etc/apt/sources.list
#sudo apt-get instll dirmngr