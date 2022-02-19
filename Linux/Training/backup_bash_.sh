#!/bin/bash
#1- create zip of my database directory (simulating a database)
#2-create backup/date directory
#3- move database backup to folder with corresponding day
TODAY=$(date +"%d-%m-%y")
tar -cz database/ > db.tar.gz
mkdir -p backup/$TODAY
mv db.tar.gz backup/$TODAY