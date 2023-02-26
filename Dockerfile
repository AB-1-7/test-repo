FROM alpine:latest

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
RUN apk add --no-cache postgresql-client

ENV PGWEB_VERSION 0.11.9
RUN wget -qO- https://github.com/sosedoff/pgweb/releases/download/v${PGWEB_VERSION}/pgweb_linux_amd64.zip | unzip -

#WORKDIR /pgweb_linux_amd64

EXPOSE 8080

CMD ["./pgweb", "--bind=0.0.0.0", "--listen=8080"]