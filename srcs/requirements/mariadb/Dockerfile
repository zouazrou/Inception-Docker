FROM debian:12

COPY ./tools/setup.sh /tmp/setup.sh

RUN /tmp/setup.sh

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.

RUN mkdir /run/mysqld

CMD ["mysqld"]
# CMD ["mysqld_safe"]