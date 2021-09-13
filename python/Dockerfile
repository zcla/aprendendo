#################################################################### init #####

# https://hub.docker.com/_/python (3.9.7-alpine3.14)
FROM python:alpine as init

WORKDIR /work/init

ENTRYPOINT /bin/sh

# Instale os pacotes desejados (pip install <pacote>) e gere o requirements.txt (pip freeze > requirements.txt)
# Ou simplesmente não faça nada e crie tudo direto na IDE

##################################################################### dev #####

# https://hub.docker.com/_/python (3.9.7-alpine3.14)
FROM python:alpine as dev

WORKDIR /work/dev

# TODO O ideal seria buscar com "--from=init", mas o container só tem o arquivo depois da execução
COPY ./src/requirements.txt /work/dev/requirements.txt

RUN pip install -r requirements.txt

COPY ./src /work/dev

ENV FLASK_APP=server.py

ENTRYPOINT flask run --host=0.0.0.0 --port=5000

#################################################################### prod #####

# https://hub.docker.com/_/python (3.9.7-alpine3.14)
FROM dev as prod

WORKDIR /work/prod

# TODO O ideal seria buscar com "--from=dev"
COPY ./src /work/prod

# TODO usar o guicorn
# https://towardsdatascience.com/deploying-flask-with-gunicorn-3-9eaacd0f6eea
# https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-20-04
ENV FLASK_APP=server.py

ENTRYPOINT flask run --host=0.0.0.0 --port=5000
