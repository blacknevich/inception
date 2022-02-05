FROM debian:buster
ARG DB_NAME
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

RUN apt-get update

RUN apt-get install mariadb-server vim -y

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./my.cnf /etc/mysql/
COPY ./nscarab_db.sql ./

#COPY ./50-server.cnf /

COPY ./initiate.sh /

#RUN service mysql start && mysql < initiate.sql

EXPOSE  3306

RUN bash initiate.sh

CMD mysqld_safe
