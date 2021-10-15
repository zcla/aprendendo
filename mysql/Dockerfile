# https://hub.docker.com/_/mysql (8.0.26)
FROM mysql

EXPOSE 3306

WORKDIR /docker-entrypoint-initdb.d

COPY ./init .
