#!/bin/bash
curl https://get.docker.com | sh -
sudo apt install docker-compose -y
docker-compose up -d

echo """version: '3.3'
services:
    blablabla3:
        container_name: web
        ports:
            - '80:80'
        image: 'tl1996/blablabla3:latest'""" > /opt/docker-compose.yml


docker-compose -f /opt/docker-compose.yml up -d
echo "* * * * * root docker-compose -f /opt/docker-compose.yml pull && docker-compose -f /opt/docker-compose.yml up -d" > /etc/cron.d/dockerjobs
