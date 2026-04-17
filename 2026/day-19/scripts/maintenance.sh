#!/bin/bash
set -euo pipefail

LOGFILE="/home/ubuntu/maintenance.log"

echo "$(date) : Started" >> $LOGFILE

/home/ubuntu/2026/19-day/log_rotate.sh /home/ubuntu/2026/19-day/test-logs >> $LOGFILE 2>&1
/home/ubuntu/2026/19-day/backup.sh /home/ubuntu/2026/19-day/data /home/ubuntu/2026/19-day/backup >> $LOGFILE 2>&1

echo "$(date) : Completed" >> $LOGFILE
