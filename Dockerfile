## making custom apache
## 2017.04.17 by Yun Insu ora01000@time-gate.com


FROM centos:centos6

MAINTAINER ora01000@time-gate.com

RUN yum -y install httpd && \
    yum -y install httpd-tools && \
    yum clean all

expose 80

CMD ["httpd", "-DFOREGROUND"]