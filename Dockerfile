FROM ubuntu:22.04

RUN apt update -y && \
    apt install -y \
        poppler-utils \
        pdf2svg \
        ghostscript \
    && apt autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
