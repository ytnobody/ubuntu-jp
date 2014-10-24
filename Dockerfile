FROM kazeburo/perl:v5.18
MAINTAINER ytnobody <ytnobody@gmail.com>

ENV TIMEZONE Asia/Tokyo

RUN rm -f /etc/localtime && \
    ln -fs /usr/share/zoneinfo/$TIMEZONE /etc/localtime

ENTRYPOINT ["/bin/bash"]
