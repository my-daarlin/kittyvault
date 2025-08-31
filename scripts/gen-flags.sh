#!/bin/bash

set -e

CMD="gengetoptions"
FILE="src/kittyvault"

if ! command -v "$CMD" >/dev/null 2>&1; then
    echo "Missing dependency: $CMD"
    exit 1
fi

IFS="/"
read -ra split_path <<<"$(pwd)"
if [[ "${split_path[${#split_path[@]} - 1]}" != "kittyvault" ]]; then
    echo "Script not executed in project root"
    exit 1
fi

echo "Generating flags for $FILE"
"$CMD" embed --overwrite "$FILE"
echo "Finished :3"
