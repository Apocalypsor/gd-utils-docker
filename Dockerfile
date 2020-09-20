FROM alpine
MAINTAINER Apocalypsor
ARG UPSTREAM_COMMIT=bfdfba6

USER root
ENV USERPWD mysec55rdet9966

ADD start.sh /
RUN chmod +x /start.sh

RUN set -ex \
        && apk update \
        && apk add --no-cache nodejs npm \
		&& apk add ca-certificates mailcap curl bash \
        && apk add --no-cache --virtual .build-deps make gcc g++ python3 git \
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone

RUN set -ex \
        && git clone https://github.com/iwestlin/gd-utils /gd-utils \
        && cd /gd-utils \
        && npm install \
        && apk del .build-deps

EXPOSE 23333
VOLUME /gd-utils


ENTRYPOINT [ "/start.sh" ]
