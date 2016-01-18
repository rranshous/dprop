#!/bin/bash

# start transmission
echo "starting transmission daemon"
./transmission_daemon.sh &

# watch for file closes and start torrent create
echo "watching for writes"
./watch_for_file_closes.sh
