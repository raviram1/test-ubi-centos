FROM registry.access.redhat.com/ubi8/ubi-init:latest
RUN yum install -y wget && yum clean all
CMD ["/sbin/init"]
