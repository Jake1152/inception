FROM debian:buster

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y nginx openssl && \
    mkdir -p /var/www/html/wordpress /etc/nginx/ssl

COPY conf/nginx.conf /etc/nginx/conf.d

COPY tools/setup.sh /tmp
RUN chmod +x /tmp/setup.sh

RUN openssl req -newkey rsa:2048 -x509 -nodes \
    -subj "/C=KR/ST=Seoul/L=Seoul/O=42seoul/OU=Im/CN=jake" \
    -keyout /etc/nginx/ssl/jake.42.fr.key \
    -out /etc/nginx/ssl/jake.42.fr.crt

EXPOSE 443

ENTRYPOINT ["bash", "tmp/setup.sh"]