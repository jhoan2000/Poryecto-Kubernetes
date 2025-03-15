# Usa una imagen base de Python

FROM python:3.9.21-alpine3.21

# Establece el directorio de trabajo en el contenedor

WORKDIR /app

# Copia el código de la aplicación al contenedor

COPY . /app

# Instala las dependencias

RUN pip install -r requirements.txt

# Expone el puerto en el que corrér la aplicación

EXPOSE 3000


# Comando para ejecutar la aplicación

CMD ["python", "main.py"]





