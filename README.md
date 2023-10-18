# Contenedor de aplicación tic-tac-toe

Este contenedor se utiliza para ejecutar una aplicación basada en Vite en un entorno específico.

## Dockerfile
El Dockerfile empaqueta la aplicación, sus dependencias y configuraciones en un contenedor. 

**Base de imagen de Node.js**: Utiliza una imagen base de Node.js en su versión 17 alpine como punto de partida.
**Directorio de trabajo**: Establece el directorio de trabajo dentro del contenedor en /app.
**Copia de archivos**: Copia el archivo package.json desde tu directorio de contexto al directorio de trabajo en el contenedor.
**Instalación de dependencias**: Ejecuta el comando npm install para instalar las dependencias de Node.js que se encuentran en el package.json.
**Copia de archivos de la aplicación**: Copia todos los archivos del proyecto tic-tac-toe desde tu directorio de contexto al directorio de trabajo en el contenedor.
**Comando de inicio**: El comando final en el Dockerfile especifica que cuando se inicie el contenedor, se ejecutará la aplicación utilizando el comando npm run dev.

## vite.config.js
En el archivo vite.config.js se especifica que la aplicación será accesible en el puerto 8080 de tu host cuando ejecutes el contenedor.

## Instrucciones para ejecutar el contenedor:

**Instala Docker**: 

Asegúrate de tener Docker instalado en tu sistema. Puedes descargarlo desde Docker's website.


**Iniciar Docker**: 

Abre Docker Desktop (en Windows o macOS) o inicia el servicio de Docker en tu sistema si estás utilizando Linux.


**Descargar la imagen**: 

Abre una terminal o línea de comandos y ejecuta el siguiente comando para descargar la imagen desde Docker Hub:

`docker pull valentinaperaltavila858/tic-tac-toe:1.0`


Esto descargará la imagen valentinaperaltavila858/tic-tac-toe:1.0 desde DockerHub a tu sistema.


**Ejecutar el contenedor**: 

Una vez que la imagen se haya descargado, puedes ejecutar un contenedor basado en esa imagen. Utiliza el siguiente comando:


`docker run -p 8080:8080 -d valentinaperaltavila858/tic-tac-toe:1.0`


**-p 3000:3000** hace coincidir el puerto 8080 del contenedor con el puerto 8080 de tu sistema host.
**-d** inicia el contenedor en segundo plano (modo daemon).


**Verificar el contenedor:** 

Puedes verificar que el contenedor se está ejecutando utilizando este 
`docker ps`
Esto mostrará una lista de contenedores en ejecución.


**Acceder a la aplicación:** 

Abre un navegador web y navega a http://localhost:8080 . Deberías ver la aplicación ejecutándose en tu sistema local a través del contenedor Docker.


