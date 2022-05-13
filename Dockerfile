# Version de python que queremos que corra.
FROM python:3.7
#Forzar el input y el output y que el output funcone sin buffer en python
ENV PYTHONUNBUFFERED 1
#Correr la carpeta
RUN mkdir /code
#Definir que el folder de trabajo sera code
WORKDIR /code
#Copiar todo lo que tiene unidep, el ID del proyecto hacia la carpeta code del contenedor
COPY . /code/
#Ahora lo vamos a correr
RUN pip install -r requirements.txt
#iniciamos el GUNICORN, esta es la ultima linea que vamos a usar ne nuestro dockerfile
CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":8000", "--chdir", "unidep", "unidep.wsgi:application"]



