FROM python:2.7
ENTRYPOINT ["/usr/bin/start.sh"]

COPY ./diamond.conf.template /usr/bin/diamond.conf.template
COPY ./start.sh /usr/bin/start.sh
RUN pip install git+git://github.com/Clever/Diamond.git@e4800e82b4056366609726b5e7bbc0a59df5b436 \
    && pip install boto \
    && pip install influxdb==v2.9.1 \
    && pip install docker-py==1.6
