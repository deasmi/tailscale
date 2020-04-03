#!/bin/ash

export PATH=$PATH:/usr/local/bin

set -e

mkdir /dev/net
mknod /dev/net/tun c 10 200

tailscaled --state=/state/tailscaled.state &

sleep 10

tailscale up

while true
do
    sleep 60
done
