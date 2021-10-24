From centos:latest
RUN yum install -y wget && yum clean all
CMD ["/sbin/init"]
