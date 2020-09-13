FROM rust:latest
RUN echo '[source.crates-io]\n\
replace-with = "tuna"\n\
\n\
[source.tuna]\n\
registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"' >> /usr/local/cargo/config && \
cargo install cargo-watch

ENV SRCDIR /root/src
WORKDIR ${SRCDIR}

