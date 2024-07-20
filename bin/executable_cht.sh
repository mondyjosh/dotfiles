#!/usr/bin/env bash

languages=$(echo "c cpp csharp golang javascript typescript rust" | tr " " "\n")
core_utils=$(echo "find xargs sed awk" | tr " " "\n")

selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "QUERY PLZ: " query

if echo "$languages" | rg -qs $selected; then
    tmux split-window -p 25 -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
    tmux split-window -p 25 -h bash -c "curl cht.sh/$selected~$query | less"
fi

