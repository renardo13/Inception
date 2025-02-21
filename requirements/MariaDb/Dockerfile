FROM debian:bullseye

RUN apt update && apt upgrade -y && apt-get install mariadb-server mariadb-client -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf