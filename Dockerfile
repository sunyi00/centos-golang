FROM sunyi00/centos:lain

RUN yum -y install epel-release \
    && yum -y install gcc make golang \
    && yum -y clean all

ENV PATH /usr/src/go/bin:$PATH

RUN mkdir -p /go/src /go/bin && chmod -R 777 /go
ENV GOPATH /go
ENV PATH /go/bin:$PATH
WORKDIR /go
