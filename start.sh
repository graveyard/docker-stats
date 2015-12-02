#!/usr/bin/env bash
mkdir -p /etc/diamond
sed -e "s/<INFLUXDB_USER>/$INFLUXDB_USER/" \
    -e "s/<INFLUXDB_PASS>/$INFLUXDB_PASS/" \
    -e "s/<INFLUXDB_DB>/$INFLUXDB_DB/" \
    -e "s/<INFLUXDB_HOST>/$INFLUXDB_HOST/" \
    -e "s/<INFLUXDB_PORT>/$INFLUXDB_PORT/" \
    /usr/bin/diamond.conf.template \
    > /etc/diamond/diamond.conf
exec diamond -f --skip-change-user --skip-fork
