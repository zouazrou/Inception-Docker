FROM debian:12

COPY ./tools/setup.sh /tmp/setup.sh

RUN /tmp/setup.sh

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.

COPY ./tools/init.sql /etc/mysql/init.sql

RUN mkdir /run/mysqld

CMD ["mysqld"]
# CMD ["mysqld_safe"]