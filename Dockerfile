####################################################################################################
## Builder
####################################################################################################
FROM rust:latest AS builder

RUN rustup target add x86_64-unknown-linux-musl
RUN apt update && apt install -y musl-tools musl-dev libgdal-dev
RUN update-ca-certificates

WORKDIR /gdal-musl-test

COPY ./ .

RUN export GDAL_STATIC=ON &&\
    cargo build --target x86_64-unknown-linux-musl --release
