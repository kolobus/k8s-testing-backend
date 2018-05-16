FROM  alpine:3.7
LABEL maintainer="Congtao Jiang <congtao.jiang@outlook.com>" \
        create-date="2018-05-15" \
        implemented-in="Node JS"

ENV \
    APP_ROOT=/opt/app  \
    HOME=/home/appuser 

ADD src ${APP_ROOT}
WORKDIR ${APP_ROOT}

RUN apk add --no-cache nodejs nodejs-npm && npm install \
    && addgroup -S alpine \
    && adduser -S -h /home/alpine -G alpine -u 2000 alpine \
    && chown -R 2000:0 ${APP_ROOT}

USER 2000

ENTRYPOINT ["/bin/sh", "-c"]
CMD [ "node index.js" ]

EXPOSE 8080
