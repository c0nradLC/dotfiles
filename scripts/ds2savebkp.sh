#!/bin/bash


default_save_path=~/.local/share/Steam/steamapps/compatdata/335300/pfx/drive_c/users/steamuser/AppData/Roaming/DarkSoulsII/011000010ed1f171

default_bkp_path=~/DS2bkps/save

for entry in "$default_save_path"/*
do
    timestamp=$(date +%s)

    rsync --mkpath $entry $default_bkp_path/$timestamp/$(basename $entry .sl2).sl2;
done
