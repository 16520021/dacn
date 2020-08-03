FROM ubuntu18.04_java8

MAINTAINER Hoang An <16520021@gm.uit.edu.vn>

HEALTHCHECK CMD curl -f http://localhost:8088/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 8088

CMD ["/run.sh"]
