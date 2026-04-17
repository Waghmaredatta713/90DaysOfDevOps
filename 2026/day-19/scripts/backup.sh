#!/bin/bash
set -euo pipefail

SRC=$1
DEST=$2

if [[ ! -d "$SRC" ]]; then
    echo "Error: Source not found!"
    exit 1
fi

mkdir -p "$DEST"

DATE=$(date +%Y-%m-%d)
FILE="$DEST/backup-$DATE.tar.gz"

tar -czf "$FILE" "$SRC"

if [[ -f "$FILE" ]]; then
    SIZE=$(du -h "$FILE" | cut -f1)
    echo "Backup: $FILE"
    echo "Size: $SIZE"
else
    echo "Backup failed!"
    exit 1
fi

find "$DEST" -name "backup-*.tar.gz" -mtime +14 -delete
