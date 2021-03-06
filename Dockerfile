# ADITO base Dockerfile
#
# https://github.com/verpalnt/dockerbase
#

FROM dockerfile/ubuntu

ENV ADATA /a/data
ENV AINIT /a/init
ENV ALOG /a/log

VOLUME ["/a/data", "/a/init", "/a/log"]


RUN \
  ln -s -f /usr/share/zoneinfo/Europe/Berlin /etc/localtime


ADD start.sh /a/start.sh
ADD init /a/init
ENTRYPOINT ["/a/start.sh"]