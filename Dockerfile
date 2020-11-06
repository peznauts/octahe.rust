ARG VERSION=5.2

FROM rust:${VERSION} as BUILD

WORKDIR /opt/octahe.rust

RUN apt-get update && apt-get -yq install libssl-dev

COPY . /opt/octahe.rust

RUN TBD

FROM TBD

RUN apt-get update && apt-get -yq install openssl

COPY --from=BUILD /usr/local/bin/octahe /usr/local/bin/octahe

USER 1001

CMD /usr/local/bin/octahe
