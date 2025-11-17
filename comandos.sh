#!/bin/bash
# Script para práctica de comandos básicos de Linux

# 1. Verifica en qué directorio estás actualmente
pwd

# 2. Muestra la ruta completa del directorio de trabajo actual
pwd

# 3 y 4. Crea la estructura de directorios para el proyecto
mkdir -p proyecto_linux/documentos

# 5. Crea un archivo de texto con un editor (requiere intervención manual)
echo "Abre el editor nano para crear informe.txt. Escribe al menos 3 líneas y guarda." 
read -p "Presiona Enter para abrir nano..." 
nano proyecto_linux/documentos/informe.txt

# 6. Entra al directorio documentos
cd proyecto_linux/documentos

# 7. Escribe dentro del archivo y guarda los cambios (ya realizado en el paso anterior)
echo "Asegúrate de que informe.txt tiene al menos 3 líneas."

# 8. Consulta el manual de un comando
man ps

# 9. Revisa para qué sirve la opción -aux de ps
echo "Busca la opción -aux en la página del manual de ps. Puedes usar la tecla '/' en man para buscar: escribe /aux y presiona Enter."

# 10 y 11. Visualiza el contenido del archivo creado
cat informe.txt

# 12 y 13. Cambia los permisos del archivo
chmod 644 informe.txt

# 14. Lista los procesos activos
ps aux

# 15. Localiza el PID de un proceso concreto (ejemplo: nano)
echo "Para buscar el proceso nano (si está abierto):"
ps aux | grep nano

# 16 y 17. Finaliza un proceso (debes reemplazar PID abajo)
echo "Si encontraste el PID de nano, termina el proceso con: kill PID (reemplaza PID por el número correspondiente)"
# Ejemplo (NO se ejecuta automáticamene):
# kill 1234

# 18. Elimina el archivo informe.txt
rm informe.txt

# 19. Elimina completamente el directorio proyecto_linux con todo su contenido
cd ../..
rm -r proyecto_linux
