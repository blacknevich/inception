service mysql start;
chown -R mysql /var/run/mysqld;
mysql -u root --skip-password -Be "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root --skip-password -Be "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -u root --skip-password -Be "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%';"
mysql -u root --skip-password -Be "FLUSH PRIVILEGES;"
mysql -u root --skip-password -Be "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" $DB_NAME < nscarab_db.sql;
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -Be "FLUSH PRIVILEGES;"
mysqladmin -u root -p"$MYSQL_ROOT_PASSWORD" shutdown;
