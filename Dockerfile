# Se define la version de node que tiene el contenedor
FROM node:14.6.0-alpine

# Defino el directorio en donde se va a ejecutar mi configuración dentro del contenedor
WORKDIR /home/edwar.zapata/projects/repository

# Copio el archivo package.json para despues instalar las dependencias de mi repositorio
COPY package*.json ./

RUN npm install

# Instalo de manera global pm2
RUN npm install pm2 -g

# Copio todos los archivos de mi repositorio al workdir
COPY . .

# Expondo el puerto por donde va a escuchar mi aplicación
EXPOSE 5002

CMD ["pm2-runtime", "ecosystem.config.js", "--env", "production"]