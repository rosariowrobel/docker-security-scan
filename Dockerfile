# Usar una imagen base de Nginx específica para linux/amd64
FROM --platform=linux/amd64 nginx:latest

# Copiar los archivos de tu aplicación al contenedor
COPY ./app /usr/share/nginx/html

# Exponer el puerto 80 para HTTP
EXPOSE 80

# Configurar un comando de inicio predeterminado (opcional)
CMD ["nginx", "-g", "daemon off;"]
