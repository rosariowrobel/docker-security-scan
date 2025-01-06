# Usar una imagen base más ligera (Alpine) para reducir vulnerabilidades
FROM nginx:alpine

# Copiar los archivos de tu aplicación al contenedor
COPY ./app /usr/share/nginx/html

# Exponer el puerto 80 para HTTP
EXPOSE 80

# Configurar un comando de inicio predeterminado
CMD ["nginx", "-g", "daemon off;"]
