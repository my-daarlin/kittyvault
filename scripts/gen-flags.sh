#!/bin/bash

set -e

CMD="gengetoptions"
FILE="kittyvault"

if ! command -v "$CMD" >/dev/null 2>&1; then
    echo "Missing dependency: $CMD"
    exit 1
fi

echo "Generating flags for $FILE"
"$CMD" embed --overwrite kittyvault
echo "Finished"
