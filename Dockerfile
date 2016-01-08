FROM mariadb

LABEL version="0.1.0"

MAINTAINER Miquel Adell <miquel@miqueladell.com>

RUN { \
        echo '[mysqld]'; \
        echo 'character-set-server=utf8mb4'; \
        echo 'collation-server=utf8mb4_unicode_ci'; \
        echo '[client]'; \
        echo 'default-character-set=utf8mb4'; \
    } > /etc/mysql/conf.d/charset.cnf
