FROM python:3-buster

RUN git clone https://github.com/ReFirmLabs/binwalk.git --depth 1 --branch v2.3.4 /binwalk && \
    cd /binwalk && \
    python3 setup.py install && \
    mkdir /app

WORKDIR /app
VOLUME [ "/app" ]

ENTRYPOINT [ "/usr/local/bin/binwalk" ]