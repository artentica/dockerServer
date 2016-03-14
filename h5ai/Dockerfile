FROM abiosoft/caddy

COPY Caddyfile /etc/Caddyfile

RUN apk add unzip
RUN wget http://release.larsjung.de/h5ai/h5ai-0.28.1.zip && unzip h5ai-0.28.1.zip && rm h5ai-0.28.1.zip
COPY . /config/Downloads/_h5ai

EXPOSE 80
