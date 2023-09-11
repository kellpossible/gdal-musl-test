FROM rust:alpine AS builder
RUN apk add --no-cache gdal-dev musl-dev

WORKDIR /gdal-musl-test

COPY ./ .

RUN cargo build --release

STOPSIGNAL SIGINT
CMD ["/gdal-musl-test/gdal-musl-test"]
