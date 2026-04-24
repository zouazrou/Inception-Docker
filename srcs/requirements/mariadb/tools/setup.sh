#!/bin/bash

if [ ! -d "/var/lib/mysql/mysql" ]; then
    mysql_install_db --user=mysql --datadir=/var/lib/mysql
fi

service mariadb start
sleep 5

if [ ! -d "/var/lib/mysql/${DB_NAME}" ]; then
    echo "Creating database and users..."
    
    mysql -e "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\`;"
    
    mysql -e "CREATE USER IF NOT EXISTS \`${DB_USER}\`@'%' IDENTIFIED BY '${DB_PASS}';"
    mysql -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO \`${DB_USER}\`@'%' WITH GRANT OPTION;"
    
    mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASS}';"
    mysql -e "FLUSH PRIVILEGES;"
    
    mysqladmin -u root -p${DB_ROOT_PASS} shutdown
else
    echo "Database already exists. Skipping initialization."
    mysqladmin -u root -p${DB_ROOT_PASS} shutdown 2>/dev/null || service mariadb stop
fi

exec mysqld_safe