#paso 1 Utilizamos una imagen base oficial de Python
 FROM python:3.12-slim

#paso 2 Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

#paso 3 copiamos el requirements.txt
COPY requirements.txt /app

#paso 4  instalar dependencias
RUN pip install -r requirements.txt

#paso 5 copiamos los archivos del proyecto al contenedor 
COPY  . /app

#PASO 6: Ejecutamos la aplicacion}
CMD ["python", "app.py"]