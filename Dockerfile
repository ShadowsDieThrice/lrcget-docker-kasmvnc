FROM lsiobase/kasmvnc:debianbookworm

RUN apt-get update && apt-get install -y \
    wget \
    gdebi-core \
    libwebkit2gtk-4.0-37 \
    python3-pyxdg \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/tranxuanthang/lrcget/releases/download/0.5.0/lrcget_0.5.0_amd64.deb -O /tmp/lrcget.deb \
    && gdebi -n /tmp/lrcget.deb \
    && rm /tmp/lrcget.deb

COPY /root /

EXPOSE 3000
