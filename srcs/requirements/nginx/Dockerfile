FROM alpine:3.18

RUN apk update && apk upgrade && apk add --no-cache nginx openssl
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -keyout /etc/nginx/ssl/dmartiro.42.fr.key -out /etc/nginx/ssl/dmartiro.42.fr.crt -subj "/C=AM/ST=Yerevan/L=Armenia/O=42 School/OU=dmartiro/CN=dmartiro/"

RUN mkdir -p /run/nginx

CMD ["nginx", "-g", "daemon off;"]
