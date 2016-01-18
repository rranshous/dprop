#!/bin/bash

inotifywait -r -m -e close_write ./data_files 2> /dev/null | while read line
do
  echo "line: $line"
  folder=$(echo $line | cut -f1 -d" ")
  file=$(echo $line | cut -f3 -d" ")
  echo "folder: $folder"
  echo "file: $file"
  echo "tn: $folder$file"

  torrent_name=$(echo "$folder$file" | cut -d'/' -f3)
  data_path="./data_files/$torrent_name"
  echo "torrent_name: $torrent_name"
  echo "data_path: $data_path"

  ./create_torrent.sh "$torrent_name" "$data_path"
done

#folder: ./data_files/test2/
#file: test
