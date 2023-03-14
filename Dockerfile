FROM ubuntu:22.04
LABEL Author="@ytabuchi"

RUN apt update && \
    apt install iputils-ping net-tools dnsutils curl locales gpg -y
# Install httpie
RUN curl -fsSL https://packages.httpie.io/deb/KEY.gpg | gpg --dearmor -o /usr/share/keyrings/httpie.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/httpie.gpg] https://packages.httpie.io/deb ./" | tee /etc/apt/sources.list.d/httpie.list > /dev/null
RUN apt update
RUN apt install httpie -y
# Install MySQL and PostreSQL client
ENV LANG=C.UTF-8
ENV LANGUAGE=en_US:
RUN apt install mysql-client -y && \
    echo [client]'\n'default-character-set=utf8 >> /etc/mysql/conf.d/mysql.cnf
RUN apt install postgresql-client -y
RUN apt upgrade -y
