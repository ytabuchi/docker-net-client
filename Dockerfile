FROM ubuntu:18.04
LABEL Author="@ytabuchi"

RUN apt-get update && \
    apt-get install iputils-ping net-tools dnsutils httpie curl locales -y
ENV LANG=C.UTF-8
ENV LANGUAGE=en_US:
RUN apt-get install mysql-client -y && \
    echo [client]'\n'default-character-set=utf8 >> /etc/mysql/conf.d/mysql.cnf
RUN apt-get install postgresql-client -y
