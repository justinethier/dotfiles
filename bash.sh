###
### Useful bash commands
###

# Find largest files on the system
du -a /dir/ | sort -n -r | head -n 20

# Delete all matching files. In this case, delete old CVS files
find . -name ".#*" -delete

# Count by hour. Can modify to get more resolution'
grep "search string" syslog | egrep "April .. .." -o | sort | uniq -c
