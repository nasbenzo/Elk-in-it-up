#!/bin/bash

free m -h > ~/backups/freemem/free_mem.txt
du -h > ~/backups/diskuse/disk_usage.txt
lsof > ~/backups/openlist/open_list.txt
df > ~/backups/freedisk/free_disk.txt
