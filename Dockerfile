FROM kazeburo/perl:v5.18
MAINTAINER ytnobody <ytnobody@gmail.com>

ENV TIMEZONE Asia/Tokyo

RUN apt-get update && \
    apt-get install wget -y --force-yes

RUN rm -f /etc/localtime && \
    ln -fs /usr/share/zoneinfo/$TIMEZONE /etc/localtime

ENTRYPOINT ["/bin/bash"]
