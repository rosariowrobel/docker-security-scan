# Docker Security Scan with Snyk and GitHub Actions

Este proyecto implementa un workflow en GitHub Actions para realizar escaneos de seguridad en imágenes Docker almacenadas en Amazon ECR, utilizando Snyk como herramienta de análisis.

## Descripción del Proyecto

El objetivo principal de este proyecto es garantizar que las imágenes Docker estén libres de vulnerabilidades críticas o de alta severidad antes de ser utilizadas en producción. Esto se logra configurando un pipeline automatizado en GitHub Actions que:

1. **Autentica** con Amazon ECR para acceder a las imágenes almacenadas.
2. **Descarga** la imagen Docker desde Amazon ECR.
3. **Realiza un escaneo** de seguridad con Snyk, evaluando las dependencias y la base de la imagen.

## Estructura del Workflow

El pipeline ejecuta los siguientes pasos:

1. Clonar el repositorio.
2. Configurar las credenciales de AWS para acceder a ECR.
3. Descargar la imagen Docker desde ECR.
4. Instalar y autenticar Snyk.
5. Realizar el escaneo de seguridad en la imagen.
6. Mostrar los resultados del análisis.

## Resultados del Escaneo

El último escaneo realizado no detectó vulnerabilidades en los paths evaluados, confirmando que la imagen `mi-app-docker:latest` es segura.

## Requisitos Previos

1. Tener un repositorio en Amazon ECR con imágenes Docker subidas.
2. Configurar las credenciales de AWS en los Secrets del repositorio en GitHub:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
3. Tener un token de Snyk configurado en los Secrets del repositorio:
   - `SNYK_TOKEN`

## Comando Utilizado para el Escaneo


snyk container test <IMAGEN_ECR> --file=Dockerfile --severity-threshold=high
