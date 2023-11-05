FROM ubuntu:18.04

LABEL authors="https://github.com/somespecialone"
LABEL description="Rust builder image for Deta micro"

RUN apt-get update && apt-get install -y curl
RUN apt-get install build-essential -y

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH=$PATH:/root/.cargo/bin CARGO_TERM_COLOR=always

WORKDIR /app
