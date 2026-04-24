#!/bin/bash
sleep 10 # Give MariaDB a head start

cd /var/www/html

# ONLY run if WordPress is not already configured
if [ ! -f "wp-config.php" ]; then
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp

    wp core download --allow-root
    
    wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --allow-root
    
    wp core install --url=$DOMAIN_NAME --title=$SITE_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --allow-root
    
    wp user create $WP_USER_NAME $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PASS --allow-root
fi

# Create the run directory for PHP (common reason for exit code 78)
mkdir -p /run/php

exec php-fpm8.2 -F