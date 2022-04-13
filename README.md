# RTMP-Server
Dockerfile to built image for a RTMP Server.
Inspired by https://github.com/TareqAlqutami/rtmp-hls-server

Built using:
- Ubuntu Impish
- Nginx
- Nginx-RTMP-module

Web player is
- Video.js

Uses up to 1 gb of shared memory, to avoid frequently rewriting HLS/Dash framents to micro sd card on Rasperry Pi.
Make sure the host has sufficient RAM.
# Usage
´docker´ and ´docker-compose´ should be available on host.
Build image and run container using the following command:
```
docker-compose up --build
```
Stream to the container on address
```
rtmp://<host-ip-address>:1935/live/<key>
```
Playback stream on the same adress, or use the HLS web player
```
http://<host-ip-adress>:8080/players/hls.html
```
DASH player is not working.
The web player is wired to RTMP stream on
```
rtmp://<host-ip-address>:1935/live/test
```
