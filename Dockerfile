# Usar una imagen base de Node.js
FROM node:14

# Crear y establecer el directorio de trabajo
WORKDIR /usr/src/app

# Copiar el package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el código fuente de la aplicación
COPY . .

# Exponer el puerto en el que la aplicación va a correr
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]

