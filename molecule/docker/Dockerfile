FROM archlinux:latest
LABEL maintainer="Lorenzo Bettini"

ENV container docker
ENV LC_ALL C

RUN pacman -Syu --noconfirm

# make sure we use the updated keyring
RUN pacman -S \
    archlinux-keyring \
    --noconfirm

RUN pacman -S \
    python-pip \
    unzip \
    sudo \
    which \
    fakeroot \
    --noconfirm \
  && rm /var/cache/pacman/pkg/*

ADD https://raw.githubusercontent.com/gdraheim/docker-systemctl-replacement/master/files/docker/systemctl3.py /usr/bin/systemctl
RUN chmod +x /usr/bin/systemctl

CMD ["/usr/bin/systemctl"]