FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=docker

COPY . /docker-entrypoint-initdb.d

EXPOSE 3306
