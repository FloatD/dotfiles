#!/bin/bash

DIR='/home/intnull/Pictures/scrot'
DATE_DIR=$(date +%Y)


DATE_FILE=$(date +%m.%d)
TIME_FILE=$(date +%H:%M)
FFILE="${DATE_FILE}_${TIME_FILE}_scrot.png"

screenfetch
if [ ! -d "${DIR}/${DATE_DIR}" ]; then
	mkdir "${DIR}/${DATE_DIR}"
fi
sleep 1
scrot "$FFILE"
mv "$FFILE" "${DIR}/${DATE_DIR}"
