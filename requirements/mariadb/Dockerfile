FROM debian:bullseye

RUN apt update && apt upgrade -y && apt-get install mariadb-server netcat mariadb-client -y

COPY ./conf/mdb-conf.sh /mdb-conf.sh

RUN chmod +x /mdb-conf.sh

ENTRYPOINT ["./mdb-conf.sh"]