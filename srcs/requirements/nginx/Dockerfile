FROM        debian:buster

LABEL       "author"="dmartiro"

RUN         apt update &&\
            apt upgrade -y &&\
            apt install -y nginx openssl

WORKDIR	    /etc/nginx

RUN         mkdir -p /etc/nginx/ssl

RUN         openssl req -newkey rsa:4096 -x509 -sha256 \
            -days 365 -nodes \
            -out /etc/nginx/ssl/dmartiro.pem \
            -keyout /etc/nginx/ssl/dmartiro.key \
            -subj "/C=AM/ST=Yerevan/L=Yerevan/O=42Yerevan/OU=IT/CN=localhost"

RUN         mkdir -p /run/nginx

COPY        ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY	    ./tools/configure.sh ./


RUN	    chmod 766 ./configure.sh

ENTRYPOINT  ["/etc/nginx/configure.sh"]

CMD         ["nginx", "-g", "daemon off;"]

