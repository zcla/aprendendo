# https://hub.docker.com/_/python (3.9.7-alpine3.14)
FROM python:alpine as dev

RUN pip install flask

ENV FLASK_APP=server.py

CMD flask run --host=0.0.0.0 --port=5000
