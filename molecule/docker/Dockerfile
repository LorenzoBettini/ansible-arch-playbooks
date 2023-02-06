FROM archlinux:latest
LABEL maintainer="Lorenzo Bettini"

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN pacman -Sy --noconfirm --needed python sudo systemd

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]

CMD ["/usr/sbin/init"]