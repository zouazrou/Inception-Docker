FROM debian:12

RUN apt update -y && apt install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/init.sql /etc/mysql/init.sql

RUN mkdir /run/mysqld && \
    mysql_install_db && \
    chown -R mysql:mysql /run/mysqld && \
    chown -R mysql:mysql /var/lib/mysql

CMD ["mysqld"]