FROM debian:buster

COPY srcs tmp

RUN apt-get update && apt-get install -y \
	openssl \
	nginx \
	php7.3-fpm \
	mariadb-server \
	php7.3-mysql \
	wget

RUN openssl req \
	-newkey rsa:2048 -nodes -x509 -days 365 \
	-subj '/C=KR/ST=Seoul/L=42cluster/O=42cursus/OU=ft_server/CN=locahost/emailAddress=tg911022@naver.com' \
	-keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt

RUN mv /tmp/default /etc/nginx/sites-available/default

RUN mv /tmp/phpinfo.php /var/www/html/phpinfo.php

RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.5/phpMyAdmin-4.9.5-all-languages.tar.gz && \
	tar -xvf phpMyAdmin-4.9.5-all-languages.tar.gz && \
	rm phpMyAdmin-4.9.5-all-languages.tar.gz && \
	mv phpMyAdmin-4.9.5-all-languages /var/www/html/phpmyadmin

RUN mv /tmp/config.inc.php /var/www/html/phpmyadmin/

RUN service mysql start && \
	mysql < var/www/html/phpmyadmin/sql/create_tables.sql -u root --skip-password && \
	mysql < /tmp/wordpress_db_setup.sql -u root --skip-password

RUN wget https://wordpress.org/latest.tar.gz && \
	tar -xvf latest.tar.gz && \
	rm latest.tar.gz && \
	mv wordpress /var/www/html/wordpress

RUN mv /tmp/wp-config.php /var/www/html/wordpress/

ENTRYPOINT service nginx start && \
			service php7.3-fpm start && \
			service mysql start && \
			bash
