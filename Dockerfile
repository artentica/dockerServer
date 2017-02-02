FROM alpine:latest
MAINTAINER Vincent Riouallon <contact@vincentriouallon.com>

RUN apk add --update curl openssh-client git tar

RUN curl --silent --show-error --fail --location --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - "https://caddyserver.com/download/build?os=linux&arch=amd64&features=cors" | tar --no-same-owner -C /usr/bin/ -xz caddy
RUN chmod 0755 /usr/bin/caddy

EXPOSE 80 443 2015
WORKDIR /srv

ADD Caddyfile /etc/Caddyfile

CMD ["/usr/bin/caddy", "--conf", "/etc/Caddyfile"]
