#!/bin/bash
#chmod -x name.sh

# Exit immediately if any command exist with a non-zero status
set -e 

# Set your Windows file server details
server_address="<Server Address>" #eg : //192.168.1.20/public
code_destination_directory="<Code Backup Destination Directory>" #eg : Backups/db-backup
code_folder="<Code Directory in Host>"
backup_zip_code_file="<code backup archive name>" # eg : www.gz or app_$(date '+%Y%m%d%H%M%S').gz
file_server_username="username%password"

tar czf  $backup_zip_code_file  $code_folder
smbclient "$server_address" -U "$file_server_username" --directory $code_destination_directory -c "put $backup_zip_code_file"
# Optional: Remove the local backup file if you want to save space
rm "$backup_zip_code_file"

echo "Backup process completed."