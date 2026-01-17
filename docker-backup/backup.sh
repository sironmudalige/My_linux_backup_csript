#!/bin/bash

SOURCE_DIR="/data"
BACKUP_DIR="/backup"

mkdir -p "$BACKUP_DIR"

if [ -z "$SOURCE_DIR" ]; then
  echo "Usage: ./backup.sh <drectory-to-backup>"
  exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: Directory does not exist -> $SOURCE_DIR"
  exit 1
fi

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

LOG_FILE="$BACKUP_DIR/backup.log"

if [ $? -eq 0 ]; then
  echo "$(date) | SUCCESS | $BACKUP_FILE" | tee -a "$LOG_FILE"
else
  echo "$(date) | FAILURE | Backup failed" | tee -a "$LOG_FILE"
fi
