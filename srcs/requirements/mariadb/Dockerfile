FROM debian:12

RUN apt update -y && apt install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/setup.sh /usr/local/bin/setup.sh
RUN chmod +x /usr/local/bin/setup.sh

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

ENTRYPOINT ["/usr/local/bin/setup.sh"]