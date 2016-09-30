FROM java:7

MAINTAINER xausky xausky@gmail.com

ENV ALLUXIO_VERSION 1.2.0

ADD http://alluxio.org/downloads/files/1.2.0/alluxio-1.2.0-bin.tar.gz -O alluxio.tar.gz /usr/local

COPY init.sh /usr/local/bin/

COPY entrypoint.sh /usr/local/bin/

RUN /usr/local/bin/init.sh

ENTRYPOINT ["entrypoint.sh"]

EXPOSE 22 19999 30000

CMD ["bash"]
