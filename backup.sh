#!/bin/sh

echo "starting db backup"
db_backup="mydb_${day}.gz"
sudo mysqldump  -udbuser -pdbpass --no-tablespaces dbname | gzip -c >/home/${db_backup}


