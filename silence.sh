#!/bin/bash

# Assicurati di avere ffmpeg installato
# Ubuntu: sudo apt install ffmpeg
# Mac: brew install ffmpeg

# Controlla se la variabile è stata impostata
if [ -z "$1" ]
  then
    echo "Devi fornire una durata in secondi come parametro"
    exit 1
fi

# Crea il file audio silenzioso m4a
ffmpeg -f lavfi -i anullsrc=channel_layout=stereo:sample_rate=44100 -t $1 -acodec aac audio.m4a
