#!/bin/bash
set -euo pipefail

LOG_DIR=$1

if [[ ! -d "$LOG_DIR" ]]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

COMPRESSED=$(find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \; -print | wc -l)
DELETED=$(find "$LOG_DIR" -name "*.gz" -mtime +30 -delete -print | wc -l)

echo "Compressed: $COMPRESSED"
echo "Deleted: $DELETED"
