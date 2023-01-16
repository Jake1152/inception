#!/bin/sh

chown -R www-data:www-data /var/www/

sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/g" /etc/php/7.3/fpm/pool.d/www.conf;
# 9000 포트를 모든 ip에 연다.

if [ ! -f "/var/www/html/wordpress/wp-config.php" ]; then
	wp --allow-root --path=/var/www/html/wordpress \
		core download \
		--locale=en_US && \
	# wp core 다운로드 
	# wp_KR로 설치, 경로지정, 로트로 실행되는 ㅓㄴ테이너에서 권한을 허용
	wp --allow-root --path=/var/www/html/wordpress \
		core config \
		--dbname=$MYSQL_DATABASE \
		--dbusre=$MYSQL_USER \
		--dbpass=$MYSQL_PASSWORD \
		--dbhost=$WP_HOST && \
	# wp의 config파일을 만들어주기 윟마 
	# sh: 1: /usr/sbin/sendmail: not food 