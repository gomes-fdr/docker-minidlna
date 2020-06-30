#!/bin/sh

docker run -d --name minidlna \
--net=host \
-p 8200:8200 \
-p 1900:1900/udp \
-v /home/fabiano/Pictures:/opt/Pictures \
-v /home/fabiano/Videos:/opt/Videos \
-v /home/fabiano/Music:/opt/Music \
-v /home/fabiano/projects/docker-minidlna/minidlna.conf:/etc/minidlna.conf \
geekduck/minidlna

