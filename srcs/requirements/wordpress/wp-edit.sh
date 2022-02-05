sed -i -e "s/db_name_replaced/'$WORDPRESS_DB_NAME'/g" ./var/www/wordpress/wp-config.php;
sed -i -e "s/db_password_replaced/'$WORDPRESS_DB_PASSWORD'/g" ./var/www/wordpress/wp-config.php;
sed -i -e "s/db_user_replaced/'$WORDPRESS_DB_USER'/g" ./var/www/wordpress/wp-config.php;
sed -i -e "s/db_host_replaced/'$WORDPRESS_DB_HOST'/g" ./var/www/wordpress/wp-config.php;
