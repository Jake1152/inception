FROM debina:buster

RUN apt-get update -y && \
    apt-get upgrae -y && \
    mkdir -p /var/www/html/wordpress /run/php && \
    apt-get install -y wget php7.3-fpm php7.3-mysql mariadb-client && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chomod +x wp-cli.phar && mv wp-cli.phar /usr/bin/wp

COPY ./tools/setup.sh /tmp
RUN chmod -x /tmp/setup.sh

EXPOSE 9000

ENTRYPOINT [ "bash", "/tmp/setup.sh" ]