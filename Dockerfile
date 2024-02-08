FROM alpine:3.19
LABEL Author="@ytabuchi"

# Install curl and httpie
RUN apk update && \
    apk --no-cache add curl httpie

# Install MySQL and PostreSQL client
ENV LANG=C.UTF-8
ENV LANGUAGE=en_US:
RUN apk --no-cache add mysql-client && \
    echo [client]'\n'default-character-set=utf8 >> /etc/my.cnf
RUN apk --no-cache add postgresql-client
RUN apk upgrade
