#!/bin/bash

killall socat
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &
docker start ubuntu
docker exec \
    -e TZ=Australia/Sydney \
    -e DISPLAY=docker.for.mac.host.internal:0 \
    -e LANG=C.UTF-8 \
    -e LC_ALL=C.UTF-8 \
    -e LINES=$(tput lines) \
    -e COLUMNS=$(tput cols) \
    -it ubuntu zsh -c "su dev -c \"export LINES=$(tput lines); export COLUMNS=$(tput cols); cd ~; zsh\""
