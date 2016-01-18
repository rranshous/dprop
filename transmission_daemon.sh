#!/bin/bash

transmission-daemon \
 --config-dir "./" \
 -c "torrent_files" \
 --download-dir "data_files" \
 --incomplete-dir "partial_files" \
 -f \
 --no-global-seedratio \
 --peerlimit-global 100 \
 --no-portmap \
 --dht \
 --port 9099 \
 --peerport 51419 \
 --no-auth \
 --utp \
 --log-info
