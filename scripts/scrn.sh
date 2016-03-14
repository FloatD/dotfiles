#!/bin/bash

DIR="/home/${USER}/Pictures/scrot"
DATE_DIR=$(date +%Y)


DATE_FILE=$(date +%m.%d)
TIME_FILE=$(date +%H:%M)
FFILE="${DATE_FILE}_${TIME_FILE}_scrot.png"

if [ ! -d "$DIR" ]; then
	mkdir $DIR
fi
if [ ! -d "${DIR}/${DATE_DIR}" ]; then
	mkdir "${DIR}/${DATE_DIR}"
fi
screenfetch
echo "Wait 3... "
sleep 1
echo "2... "
sleep 1
echo "1... "
sleep 1
echo "0... "
scrot "$FFILE"
mv "$FFILE" "${DIR}/${DATE_DIR}"
