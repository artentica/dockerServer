FROM abiosoft/caddy

RUN apt-get update && apt-get upgrade -y && apt-get install php php-fpm

COPY Caddyfile /etc/Caddyfile

EXPOSE 80
EXPOSE 443
