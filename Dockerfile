FROM golang:latest
MAINTAINER Vincent Riouallon <contact@vincentriouallon.com>

RUN go get github.com/mholt/caddy

WORKDIR $GOPATH/src/github.com/mholt/caddy

RUN caddy/build.bash /usr/bin/caddy

RUN chmod 0755 /usr/bin/caddy

EXPOSE 80 443 2015


WORKDIR /srv

ADD Caddyfile /etc/Caddyfile

CMD ["/usr/bin/caddy", "--conf", "/etc/Caddyfile"]
