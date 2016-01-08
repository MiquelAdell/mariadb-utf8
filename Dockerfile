FROM mariadb
MAINTAINER Miquel Adell <miquel@miqueladell.com>

RUN { \
        echo '[mysqld]'; \
        echo 'character-set-server=utf8mb4'; \
        echo 'collation-server=utf8_general_ci'; \
        echo '[client]'; \
        echo 'default-character-set=utf8mb4'; \
    } > /etc/mysql/conf.d/charset.cnf
