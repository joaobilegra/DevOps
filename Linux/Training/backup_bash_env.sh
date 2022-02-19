#!/bin/bash
TODAY=$(date +"%d-%m-%y")
mkdir -p backup/config/$TODAY
env> env_data.txt 
mv env_data.txt backup/config/$TODAY