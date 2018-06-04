FROM ubuntu
LABEL maintainer="Xi Shen <davidshen84@gmail.com>"

RUN apt-get update && apt-get install -y \
    python3-pip ffmpeg\
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install -U pip
RUN pip3 install -U youtube-dl

WORKDIR /data
ENTRYPOINT ["youtube-dl"]
