FROM centos:7
LABEL description="building this image containers"
LABEL MAINTAINER ="Simon"
RUN yum -y update 
RUN yum -y install httpd 
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd"]
CMD  ["-D", "FOREGROUND"]
EXPOSE 80 443 
