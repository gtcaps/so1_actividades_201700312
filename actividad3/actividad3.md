# Script de Gestión de Usuarios, Grupos y Permisos

```bash
#!/bin/bash

# Parte 1: Gestión de Usuarios

# 1. Creación de Usuarios
sudo useradd usuario1
sudo useradd usuario2
sudo useradd usuario3

# 2. Asignación de Contraseñas
echo "usrpass1" | sudo chpasswd
echo "usrpass2" | sudo chpasswd
echo "usrpass3" | sudo chpasswd

# 3. Información de Usuarios
sudo id usuario1

# 4. Eliminación de Usuarios (conservando el directorio principal)
sudo userdel --keep-home usuario3

# Parte 2: Gestión de Grupos

# 1. Creación de Grupos
sudo groupadd grupo1
sudo groupadd grupo2

# 2. Agregar Usuarios a Grupos
sudo usermod -aG grupo1 usuario1
sudo usermod -aG grupo2 usuario2

# 3. Verificar Membresía
sudo groups usuario1
sudo groups usuario2

# 4. Eliminar Grupo
sudo groupdel grupo2

# Parte 3: Gestión de Permisos

# Cambiar al usuario1 para crear archivos y directorios
sudo -i -u usuario1 bash << EOF

# 1. Creación de Archivos y Directorios
touch ~/archivo1.txt
echo "Contenido de archivo1" > ~/archivo1.txt
mkdir ~/directorio1
echo "Contenido de archivo2" > ~/directorio1/archivo2.txt

# 2. Verificar Permisos
ls -l ~/archivo1.txt
ls -ld ~/directorio1
ls -l ~/directorio1/archivo2.txt

# 3. Modificar Permisos usando `chmod` con Modo Numérico
chmod 640 ~/archivo1.txt

# 4. Modificar Permisos usando `chmod` con Modo Simbólico
chmod u+x ~/directorio1/archivo2.txt

EOF

# 5. Cambiar el Grupo Propietario
sudo chgrp grupo1 /home/usuario1/directorio1/archivo2.txt

# 6. Configurar Permisos de Directorio
sudo chmod 740 /home/usuario1/directorio1

# 7. Comprobación de Acceso
sudo -i -u usuario2 bash << EOF
echo "Intentando acceder a archivo1.txt"
cat /home/usuario1/archivo1.txt || echo "Acceso denegado a archivo1.txt"

echo "Intentando acceder a archivo2.txt en directorio1"
cat /home/usuario1/directorio1/archivo2.txt || echo "Acceso denegado a archivo2.txt"
EOF

# 8. Verificación Final
ls -l /home/usuario1/archivo1.txt
ls -ld /home/usuario1/directorio1
ls -l /home/usuario1/directorio1/archivo2.txt
