#!/bin/bash

# Add local docker repository

mkdir -pv /etc/docker/
cp -v daemon.json /etc/docker/

systemctl restart docker.service
