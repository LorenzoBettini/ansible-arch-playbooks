FROM archlinux:base-20230212.0.126025
LABEL maintainer="Lorenzo Bettini"

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN pacman -Sy --noconfirm --needed python sudo systemd

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]

CMD ["/usr/sbin/init"]