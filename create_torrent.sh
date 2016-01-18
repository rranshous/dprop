#!/bin/bash

torrent_name=$1
data_path=$2

echo "Creating torrent [$torrent_name] from [$data_path]"
transmission-create -o "./torrent_files/$torrent_name.torrent" "$data_path"
