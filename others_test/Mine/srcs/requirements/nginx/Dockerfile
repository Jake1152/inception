FROM debian:buster

RUN apt-get update && \
	apt-get upgrade && \
	apt-get install -y nginx
	# mkdir -p /var/www/html/wordpress /etc/nginx/ssl

COPY conf/nginx.conf /etc/nginx/conf.d/

COPY tools/setup.sh /tmp
RUN chmod +x /tmp/setup.sh

# COPY chmod +x /tmp/setup.sh
# RUN chmod +x /tmp/setup.sh

# RUN openssl req -newkey rsa:2048 -x509 -nodes \
# 	-subj "/C=KR/ST=Seoul/L=Gang-name"
#	-keyout /etc/nginx/ssl/jim.42.fr.key \
#	-out /etc/nginx/ssl/jim.42.fr.crt

EXPOSE 443

ENTRYPOINT ["bash", "/tmp/setup.sh"]

# COPY tools/setup.sh

# CMD ["nginx", "-g", "daemon off;"]