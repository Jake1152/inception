#!/bin/sh

# nginx에서 접근할수 있도록 권한설정
chown -R www-data:www-data /var/www/

# -i -> in-place
# 9000포트를 모든 ip에 열어놓는다.
sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/g" /etc/php/7.3/fpm/pool.d/www.conf;

if [ ! -f "/var/www/html/wordpress/wp-config.php" ]; then
    # wp core다운
    wp --allow-root --path=/var/www/html/wordpress \
        core download \
        --locale=ko_KR && \

    # wp config파일 만들기, wp-config.php 생성
    wp --allow-root --path=/var/www/html/wordpress \
        core config \
        --dbname=$MYSQL_DATABASE \
        --dbuser=$MYSQL_USER \
        --dbpass=$MYSQL_PASSWORD \
        --dbhost=$WP_HOST && \
    
    # wp 관리자 설정 및 DB 설치
    wp --allow-root --path=/var/www/html/wordpress \
        core install \
        --url=$DOMAIN \
        --title=$WP_ADMIN \
        --admin_user=$WP_ADMIN \
        --admin_password=$WP_ADMIN_PASSWORD \
        --admin_email=$WP_ADMIN_EMAIL && \
    
    # wp 유저 생성
    wp --allow-root --path=/var/www/html/wordpress \
        user create $WP_USER $WP_EMAIL \
        --role=author \
        --user_pass=$WP_USER_PASSWORD && \
    
    # theme 설정, https://wordpress.org/themes/, 마음에 드는 테마 download하여 이름 추정
    wp --allow-root --path=/var/www/html/wordpress \
        theme activate hello-elementor
fi

echo "Wordpress Start!"

exec /usr/sbin/php-fpm7.3 -F