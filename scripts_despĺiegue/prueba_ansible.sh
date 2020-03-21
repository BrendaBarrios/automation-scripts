# Este script realiza una prueba con ansible usando una instancia de amazon
# realiza un ping y devolvera un pong.


# Para poder ejecutar y realizar la prueba siempre debe 
# de tener el nombre de hosts de otra manera no se ejecutara a 
# este archivo es el inventario donde se colocan las maquinas a 
# las que se les realizara el aprovisionamiento.


# Crea el archivo que es como un inventario donde se estra colocando
# los servidores a los que seran aprovisionados.


# Debes de tener ya encendida tu instancia de amazon
#



# Para indicar que esto es el servidor

sudo rm /etc/ansible/hosts

echo  '[ip]'| sudo tee -a /etc/ansible/hosts
echo  '3.15.170.64'| sudo tee -a /etc/ansible/hosts
# Primero debes cambiar los permisos para que ubuntu se un usuario

#echo 'tomcat8:x:16:ubuntu'| sudo tee -a /etc/group

# Par colocar las variables que necesitaremos.

echo '[ip:vars]'| sudo tee -a /etc/ansible/hosts

# Para indicarle  que el usuario de la maquina virtual es un ubuntu
echo 'ansible_user=ubuntu'| sudo tee -a /etc/ansible/hosts

# Dar permiso al archivo de la llave.
sudo chmod 400 acceso_instancia.pem

# Coloca la dirección de llave que te dio amazon si la colocas dentro de la carpeta compartida coloca esa ruta

echo 'ansible_ssh_private_key_file=/vagrant_data/acceso_instancia.pem' | sudo tee -a /etc/ansible/hosts

# Colocamos el python que usaremos.

echo 'ansible_python_interpreter=/usr/bin/python3' | sudo tee -a /etc/ansible/hosts

# Instrucción para ejecutar el archivo hosts esto relizara 
# el ping a la ip.

ansible all -m ping

# Para saber si realizo la conexión correcta debera devolver 
# como respuesta un pong.