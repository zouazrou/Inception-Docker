#!/bin/bash

# Move to dir where the website files must be live
cd /var/www/html
# Downloads WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# Make it executable and move it to /usr/local/bin to make it globally accessible
chmod +x wp-cli.phar
# download the latest version of WordPress files
./wp-cli.phar core download --allow-root
# Fill `wp-config.php` that tells wp how to talk to DB container
./wp-cli.phar config create --dbname=wordpress --dbuser=wpuser --dbpass=password --dbhost=mariadb --allow-root

./wp-cli.phar core install --url=localhost --title=inception --admin_user=admin --admin_password=admin --admin_email=admin@admin.com --allow-root

php-fpm8.2 -F