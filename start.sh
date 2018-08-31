#!/usr/bin/env bash

docker run -v openvpn_data:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn