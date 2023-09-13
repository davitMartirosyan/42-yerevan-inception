FROM alpine:3.18

RUN apk update && apk upgrade && apk add --no-cache mariadb mariadb-client

CMD ["mysqld", "--bind-address=0.0.0.0"]
