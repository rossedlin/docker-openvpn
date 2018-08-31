#!/usr/bin/env bash

docker volume create --name openvpn_data

docker run -v openvpn_data:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_genconfig -u udp://vpn.rossedlin.com
docker run -v openvpn_data:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn ovpn_initpki