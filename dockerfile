# Imagen base
FROM node:18-alpine

# Carpeta de trabajo dentro del contenedor
WORKDIR /src

# Copiar dependencias primero
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de la app
COPY . .

# Exponer puerto
EXPOSE 8080

# Comando de inicio
CMD ["npm", "start"]

