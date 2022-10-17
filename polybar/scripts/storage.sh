#!/bin/sh
echo $(df -h | grep $USER | xargs | cut -d " " -f 3 | awk '{ print substr( $0, 1, length($0)-1 ) }')/$(df -h | grep $USER | xargs | cut -d " " -f 2)
