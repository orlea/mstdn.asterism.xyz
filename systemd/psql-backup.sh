#!/bin/sh
set -ux

destination=s3:hoge/fuga
filename=postgres-backup.sql

sudo -Hu postgres pg_dumpall > /tmp/${filename}
gzip /tmp/${filename}
rclone copy /tmp/${filename}.gz ${destination}/
rm /tmp/${filename}.gz
