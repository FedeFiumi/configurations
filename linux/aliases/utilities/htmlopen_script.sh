#!/bin/bash

relative_path=$1

if [ -f "$relative_path" ]
then
  re_point=^[.][^\/]
  re_point_slash=^[.\/]
  start_char=0
  if [[ $relative_path =~ re_point_slash ]]
  then
    start_char=2
  elif [[ $relative_path =~ re_point ]]
  then
    start_char=1
  fi
  #echo "OFFSET CHAR "$start_char
  subpath=${relative_path:$start_char}
  wslpath_linux="file://wsl%24/Ubuntu"
  current_relative_path=$(pwd)
  full_path="$wslpath_linux$current_relative_path$subpath"
  echo "PATH $full_path"
  "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" $full_path
else
  echo "Error: file not existent!(Have a look at the syntax)"
fi
