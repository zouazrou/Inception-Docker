#!/bin/bash

# This will create a file like: backup_2026-05-03_14-30.sql
BACKUP_FILE="/backups/backup_$(date +%F_%H-%M).sql"

# Uses the variables already defined in your .env file!
mysqldump -h mariadb -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"

echo "Backup created: $BACKUP_FILE"