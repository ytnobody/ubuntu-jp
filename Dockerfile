FROM myfinder/docker-ubuntu-base
MAINTAINER ytnobody <ytnobody@gmail.com>

ENV PATH $PLENV_ROOT/bin:$PLENV_ROOT/versions/5.18.2/bin:$PATH
ENV TIMEZONE Asia/Tokyo

RUN apt-get update && \
    apt-get install wget -y --force-yes

RUN rm -f /etc/localtime && \
    ln -fs /usr/share/zoneinfo/$TIMEZONE /etc/localtime

ENTRYPOINT ["/bin/bash"]
