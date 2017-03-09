FROM alpine:latest
MAINTAINER Vincent RIOUALLON <contact@vincentriouallon.com>

RUN apk add --update curl openssh-client git tar
RUN curl --silent --show-error --fail --location --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - "https://caddyserver.com/download/build?os=linux&arch=amd64&features=git%2Covh" | tar --no-same-owner -C /usr/bin/ -xz caddy
RUN chmod 0755 /usr/bin/caddy

ADD Caddyfile /etc/Caddyfile

VOLUME /root/.caddy
WORKDIR /srv

EXPOSE 80 443 2015

CMD ["/usr/bin/caddy", "--conf", "/etc/Caddyfile"]
