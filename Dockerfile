# Usar una imagen base de Nginx
FROM nginx:latest

# Copiar los archivos de tu aplicación al contenedor
COPY ./app /usr/share/nginx/html

# Exponer el puerto 80 para HTTP
EXPOSE 80
