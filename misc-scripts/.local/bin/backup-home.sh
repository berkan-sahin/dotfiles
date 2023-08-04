#!/bin/bash

# A script to perform incremental backups using rsync

#set -o errexit
#set -o nounset
#set -o pipefail

readonly SOURCE_DIR="${HOME}"
readonly BACKUP_DIR="/run/media/bsahin/bruh/backup"
readonly DATETIME="$(date '+%Y-%m-%d_%H:%M:%S')"
readonly BACKUP_PATH="${BACKUP_DIR}/${DATETIME}"
readonly LATEST_LINK="${BACKUP_DIR}/latest"

mkdir -p "${BACKUP_DIR}"

rsync -av --delete \
  "${SOURCE_DIR}/" \
  --link-dest "${LATEST_LINK}" \
  --exclude=".cache" \
  --exclude=".local/share/Steam" \
  --exclude=".local/share/JetBrains" \
  --exclude="VirtualBox VMs" \
  "${BACKUP_PATH}"

rm -rf "${LATEST_LINK}"
ln -s "${BACKUP_PATH}" "${LATEST_LINK}"

