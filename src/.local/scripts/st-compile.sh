#!/bin/sh

DIR="$HOME/.local/suckless/st"

echo "going to directory $DIR"

cd $DIR

rm -f config.h

sudo make clean install
