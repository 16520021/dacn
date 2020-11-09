FROM spark_base

MAINTAINER Hoang An <16520021@gm.uit.edu.vn>
COPY worker.sh /

RUN apt-get update && apt-get install -y --no-install-recommends \
        netcat

ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_WORKER_LOG /spark/logs
ENV SPARK_HOME /spark
ENV SPARK_MASTER "spark://spark-master:7077"

EXPOSE 8081

CMD ["/bin/bash", "/worker.sh"]