FROM alpine:3.18

RUN apk update && apk upgrade && apk install --no-cache mariadb mariadb-clinet

EXPOSE 3306
CMD ["usr/bin/mysqld", "--skip-log-error"]
