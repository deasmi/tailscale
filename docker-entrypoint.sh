#!/bin/bash

set -e

/usr/local/bin/tailscaled --state=tailscaled.state

/usr/local/bin/tailscale up

white true; do
    sleep 60
done
