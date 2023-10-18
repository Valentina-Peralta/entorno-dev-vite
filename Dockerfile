# Utiliza la imagen oficial de Node.js como base
FROM node:17-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json al directorio de trabajo
COPY package.json .

# Instala las dependencias de Node.js
RUN npm install

# Copia el resto de los archivos de la aplicación al directorio de trabajo
COPY . .


CMD [ "npm","run","dev" ]
