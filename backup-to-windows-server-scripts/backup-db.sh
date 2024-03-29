#!/bin/bash

# Exit immediately if any command exist with a non-zero status
set -e 

# Set the current date for the backup file
backup_file="db_$(date '+%Y%m%d%H%M%S').sql"

# Run mysqldump within the Docker container
sudo docker exec 70c mariadb-dump  -u root -p<db_pass>  <db_name> > "$backup_file"

# Optional: Compress the backup file
gzip "$backup_file"


# Set your Windows file server details
server_address="<Server Address>" #eg : //192.168.1.20/public
db_destination_directory="<DB Backup Destination Directory>" #eg : Backups/db-backup
file_server_username="username%password"


# Use smbclient to copy the file to the Windows file server
smbclient "$server_address" -U "$file_server_username" --directory $db_destination_directory -c "put $backup_file.gz"
echo "Backup process completed."
# Optional: Remove the local backup file if you want to save space
rm "$backup_file.gz"
