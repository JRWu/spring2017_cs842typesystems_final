from ubuntu:trusty

# Cython
RUN apt-get update && apt-get install -y vim python-dev python3-dev python-pip python3-pip gcc clang && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install cython && pip3 install cython

# Hack
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | apt-key add -
RUN echo deb http://dl.hhvm.com/ubuntu trusty main | tee /etc/apt/sources.list.d/hhvm.list
RUN apt-get update
RUN apt-get install -y hhvm


VOLUME ["/testsuite", "/host"]
