FROM phusion/baseimage:0.9.12
MAINTAINER xiaogaozi <gaochangjian@gmail.com>

ENV HOME /root
RUN mkdir /build
ADD . /build
RUN /build/install.sh
CMD ["/sbin/my_init"]
