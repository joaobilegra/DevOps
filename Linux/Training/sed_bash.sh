#!/bin/bash
echo "one
 two
 thre" >x.txt
 sed '2d' x.txt
 rm -rf x.txt