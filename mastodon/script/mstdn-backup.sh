#!/bin/sh
set -ux

destination=$backup_path

sudo -Hu postgres pg_dump mastodon_db > /tmp/mastodon.pgdump
sudo chown ubuntu:ubuntu /tmp/mastodon.pgdump
rclone copy  /tmp/mastodon.pgdump  ${destination}/pg_dump/
sudo rm /tmp/mastodon.pgdump
