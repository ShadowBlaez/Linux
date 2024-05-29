#!/bin/bash

awk -F ":" '{print "User ID: " $3 " - Username: " $1}' home/michael/WAT_Michael/File3 > ~/user_info.txt

find / -type f ! -user $(whoami) ! -user root -delete
