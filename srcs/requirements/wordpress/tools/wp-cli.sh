#!/bin/bash

# Move to dir where the website files must be live
cd /var/www/html

# Downloads WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar

# download WordPress
./wp-cli.phar core download --allow-root

# Fill `wp-config.php` that tells wp how to talk to DB container
./wp-cli.phar config create     \
            --dbname=$DB_NAME  \
            --dbuser=$DB_USER     \
            --dbpass=$DB_PASS   \
            --dbhost=mariadb --allow-root 

# Install wp & Create the Administrator
./wp-cli.phar core install                  \
            --url=$DOMAIN_NAME              \
            --title=$SITE_TITLE             \
            --admin_user=$WP_ADMIN_USER     \
            --admin_password=$WP_ADMIN_PASS \
            --admin_email=$WP_ADMIN_EMAIL   \
            --allow-root
# Create the User
./wp-cli.phar user create \
    $WP_USER_NAME $WP_USER_EMAIL \
    --role=author \
    --user_pass=$WP_USER_PASS \
    --allow-root

# Run PHP-FPM in foreground
php-fpm8.2 -F