# Este script explica como crea una carpeta compartida entre ubuntu y vagrant.

# Debes colocarte donde creaste tu maquina virtual , 
# para identificarla debe aparecer una carpeta llamada 
# .vagrant y Vagrantfile.

# Una vez que ya te colocaste en el directorio anterior debes crear una carpeta 
# puedes colocar el nombre que quieras en este caso la llamaremos data.

# En esta carpeta data deberas colocar los archivos que quieres que se compartan con 
# tu maquina virtual. Es decir los archivos que colocaste en tu sitema y quieres que aparezcan
# en tu maquina.

mkdir data

# En el archivo Vagrantfile en la line 46 debes de quitar el comentario
# para permitir que se compartan las carpetas los parametros deben quedar asi
# ./data", "/vagrant_data" la siguiente linea es como deberia estar.

# ----- >>>> config.vm.synced_folder "./data", "/vagrant_data"

# Ahora tendras se encinde la maquina virtual.
vagrant up  

# Mientras que se encienda en la información que desplega ahora debera aparecer
# en alguna de las lineas lo siguiente :
# ==> default: Mounting shared folders...
# default: /vagrant_data => < Aqui debe de ir la dirección donde creaste el directorio data>/data
# Ejemplo  default: /vagrant_data => /home/bodhi/Desktop/Deployment/data

# Entrar a la consola de la maquina.

echo 'Entrando  consola de la maquina'
vagrant ssh

# Despues para verificar que tu carpeta ya esta compartida 
# debes entrar colo lo indica en la instrucción que analizamos anteriormente
# /vagrant_data

echo 'Entrando a la carpeta de /vagrant_data dentro de la maquina '

# Esto lo ejecutas una vez que te abra la terminal del ssh de tu maquina.

cd /vagrant_data
ls

# Tendras que ver que los archivos que colocas en la carpeta compartida en este caso
# data deberan a parecer en la terminal, si aun no tienes archivos te aparecera vacio.


# Para ejecutar este script y te cree la carpeta deberas darle 
# el siguiente permiso al archivo chmod u+x carpetacompartida.sh 
# lo ejecutas ./carpeta compartida
