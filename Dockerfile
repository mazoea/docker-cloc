FROM alpine:3.8

WORKDIR /opt/src/

RUN apk update && \
    apk info cloc && \
    apk add cloc
RUN cloc --version

ENTRYPOINT [ "cloc" ]
CMD [ "--version" ]
