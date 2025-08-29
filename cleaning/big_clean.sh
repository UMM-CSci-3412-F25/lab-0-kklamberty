#!/bin/bash

TAR_ARCHIVE=$1
FOLDER_NAME=$(basename "$TAR_ARCHIVE" .tgz)
CLEAN_TAR_ARCHIVE="cleaned_${TAR_ARCHIVE}"
COOL_SPOT=$(pwd)

# make a temp directory
SCRATCH=$(mktemp --directory SCRATCH-XXXXXX)

tar -xzf "$TAR_ARCHIVE" -C "$SCRATCH"

cd "$SCRATCH" || exit

# find the files with deletion marking and delete them
grep -rlZ "DELETE\ ME\!" "$FOLDER_NAME" | xargs rm

tar -czf "$CLEAN_TAR_ARCHIVE" "$FOLDER_NAME"

mv "$CLEAN_TAR_ARCHIVE" ./..
cd "$COOL_SPOT" || exit 
rm -rf "$SCRATCH"

