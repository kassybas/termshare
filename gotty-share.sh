#!/usr/bin/env bash

gotty --reconnect --title-format "${USER}'s Terminal" --width "$(tput cols)" --height "$(tput lines)" tmux new -A -s gotty bash | grep "URL: http://" &

sleep 1
printf "\033[0;36m >> Save the URL then press Enter for shared terminal \033[0m\n"
read
tmux new -A -s gotty

pkill "gotty"
