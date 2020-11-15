# base image
FROM centos

# MAINTAINER
MAINTAINER 15532634791@163.com

# running required command
RUN echo '----------------start-----------------'

RUN yum install -y vim

RUN echo '-----------------end------------------'

# change dir to /usr/local/
WORKDIR /usr/local/

# execute command to compile nginx
VOLUME /data/

EXPOSE 80

CMD /bin/bash

ENTRYPOINT ls 