#!/usr/bin/env bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.icons/"
  mkdir -p $DEST_DIR
fi

# Remove folder if existing
if [ -d "$DEST_DIR/Anya-cursors" ]; then
  rm -rf "$DEST_DIR/Anya-cursors"
fi
cp -r Anya-cursors/ $DEST_DIR/Anya-cursors

echo "Finished..."

