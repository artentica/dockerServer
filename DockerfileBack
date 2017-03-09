FROM base/archlinux
MAINTAINER Vincent Riouallon <contact@vincentriouallon.com>

RUN pacman -Syyuu --noconfirm gzip curl git tar

RUN curl --silent --show-error --fail --location --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - "https://caddyserver.com/download/build?os=linux&arch=amd64&features=DNS%2Cawslambda%2Ccors%2Cexpires%2Cfilemanager%2Cgit%2Chugo%2Cipfilter%2Cjsonp%2Cjwt%2Clocale%2Cmailout%2Cminify%2Cmultipass%2Cprometheus%2Cratelimit%2Crealip%2Csearch%2Cupload%2Ccloudflare%2Cdigitalocean%2Cdnsimple%2Cdyn%2Cgandi%2Cgooglecloud%2Clinode%2Cnamecheap%2Crfc2136%2Croute53%2Cvultr" | tar --no-same-owner -C /usr/bin/ -xz caddy
RUN chmod 0755 /usr/bin/caddy

EXPOSE 80 443 2015
WORKDIR /srv

ADD Caddyfile /etc/Caddyfile

CMD ["/usr/bin/caddy", "--conf", "/etc/Caddyfile"]
