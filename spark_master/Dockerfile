FROM spark_base

MAINTAINER Hoang An <16520021@gm.uit.edu.vn>

COPY master.sh /

RUN apt-get update && apt-get install -y --no-install-recommends \
        apt-utils \
        python3-pip \
        gcc \
        python3-dev \
    && apt-get install -y cmake \
    && apt install -y g++ \
    && pip3 install --upgrade pip \
    && pip install --upgrade wheel \
    && pip install -vU setuptools \
    && pip install findspark \
    && pip install pandas \
    && pip install hdfs \
    && pip install matplotlib \
    && pip install scikit-learn \
    && pip install cython \
    && pip install cassandra-driver \
    && pip install --upgrade tensorflow \
    && pip install jupyter \
    && pip install apache-airflow \
    && pip install opencv-python \
    && pip install azure-mgmt-resource \
    && pip install azure-mgmt-datalake-store \
    && pip install azure-datalake-store \
    && pip install mlxtend \
    && pip install dlib \
    && pip install imageio \
    && pip install scikit-image \
    && jupyter notebook --generate-config

ENV SPARK_MASTER_PORT 7077
ENV SPARK_MASTER_WEBUI_PORT 8080
ENV SPARK_MASTER_LOG /spark/logs
ENV SPARK_HOME /spark
ENV PYTHONPATH=/usr/bin/python3.6
ENV PYSPARK_PYTHON=python3.6
ENV AIRFLOW_PORT 8085
ENV AIRFLOW_HOME ~/airflow

EXPOSE 8080 7077 6066 8888 8085

CMD ["/bin/bash","/master.sh"]