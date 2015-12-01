FROM python:2.7
ENTRYPOINT ["/usr/bin/start.sh"]

COPY ./diamond.conf.template /usr/bin/diamond.conf.template
COPY ./start.sh /usr/bin/start.sh
RUN pip install git+git://github.com/Clever/Diamond.git@a11370fde554056e022afbdb4298587f20e9ee20 \
    && pip install boto \
    && pip install influxdb==v2.9.1 \
    && pip install docker-py==1.6
