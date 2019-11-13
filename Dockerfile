FROM ubuntu:18.04
LABEL Author="@ytabuchi"

RUN apt update && \
    apt install iputils-ping net-tools dnsutils httpie curl locales -y
ENV LANG=C.UTF-8
ENV LANGUAGE=en_US:
RUN apt install mysql-client -y && \
    echo [client]'\n'default-character-set=utf8 >> /etc/mysql/conf.d/mysql.cnf
