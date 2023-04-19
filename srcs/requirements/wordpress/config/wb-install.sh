#!/bin/bash
mkdir /var/www/
mkdir /var/www/html
cd /var/www/html
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar 
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root

mv /wp-config.php /var/www/html/


wp config set DB_HOST $MYSQL_HOST --allow-root
wp config set DB_NAME $MYSQL_DATABASE --allow-root
wp config set DB_USER $MYSQL_USER --allow-root
wp config set DB_PASSWORD $MYSQL_PASSWORD --allow-root

wp config set AUTH_KEY $WP_AUTH_KEY --allow-root
wp config set SECURE_AUTH_KEY $WP_SECURE_AUTH_KEY --allow-root
wp config set LOGGED_IN_KEY $WP_LOGGED_IN_KEY --allow-root
wp config set NONCE_KEY $WP_NONCE_KEY --allow-root
wp config set AUTH_SALT $WP_AUTH_SALT --allow-root
wp config set SECURE_AUTH_SALT $WP_SECURE_AUTH_SALT --allow-root
wp config set LOGGED_IN_SALT $WP_LOGGED_IN_SALT --allow-root
wp config set NONCE_SALT $WP_NONCE_SALT --allow-root


wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
wp user create $WP_USR $WP_EMAIL --role=author --user_pass=$WP_PWD --allow-root

mkdir /run/php
/usr/sbin/php-fpm7.4 -F