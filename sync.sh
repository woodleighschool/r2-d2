#!/bin/bash
set -x
# Define the local repository path and the R2 bucket path
local_repo="$(dirname "$(realpath "$0")")/"
r2_bucket="r2-woodleigh:/woodleigh-school"

# Navigate to the script's location to ensure paths are relative to the script location
cd "$(dirname "$0")"

# Sync the local repository to the R2 bucket, excluding hidden files
rclone sync "$local_repo" "$r2_bucket" --exclude "./.git" --progress

echo "Sync completed successfully."

