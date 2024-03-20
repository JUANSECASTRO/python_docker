# Usa una imagen base de Python
FROM python:latest

# Copia el archivo Python al directorio de trabajo del contenedor
COPY holamundo.py /app/

# Establece el directorio de trabajo
WORKDIR /app

# Compila el archivo Python para generar holamundo.html
RUN python3 holamundo.py

# Copia el archivo HTML generado al directorio de trabajo del contenedor
COPY holamundo.html /app/

# Expone el puerto en el que el servidor web estará escuchando
EXPOSE 8010

# Ejecuta el servidor web para servir el archivo HTML
CMD ["python", "-m", "http.server", "8010"]