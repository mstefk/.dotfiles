#!/usr/bin/env bash
#has exec perms
echo "asd"
if [[ ! -f "$1" ]];then
    exit
fi
echo "asda"
mime=$(file -b --mime-type "$1")
echo $mime
echo $1
if [[ "${1#*.}" = "m3u" ]];then
    audacious "$1"
elif [[ "${mime}" = "text/x-shellscript" ]];then
    bash -c "$1"
elif [[ "${mime%/*}" = "text" ]];then
    notepadqq "$1"
elif [[ "${mime%/*}" = "image" ]];then
    nomacs "$1"
elif [[ "${mime%/*}" = "video" ]];then
    firefox "$1"
elif [[ "${mime%}" = "audio/mpegapplication/octet-stream" ]];then
    audacious "$1"
elif [[ "${mime%/*}" = "audio" ]];then
    audacious "$1"
elif [[ "${mime}" = "application/epub+zip" ]];then
    zathura "$1"
elif [[ "${mime}" = "application/x-pie-executable" ]];then
    bash -c "$1"
elif [[ "${mime}" = "application/x-dosexec" ]];then
    wine "$1"

fi
