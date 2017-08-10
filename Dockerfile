FROM ubuntu:16.04

MAINTAINER Brett McGinnis <brettmcgin@gmail.com>

RUN apt-get update && \
    apt-get install -y \
    qbittorrent-nox

ARG USER=qbtuser

RUN useradd --system \
      --create-home \
      ${USER}

USER ${USER}

VOLUME /home/qbtuser/.config/
VOLUME /home/qbtuser/Downloads

CMD /usr/bin/qbittorrent-nox
