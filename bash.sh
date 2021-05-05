###
### Useful bash commands
###

# Find largest files on the system
du -a /dir/ | sort -n -r | head -n 20

# Delete all matching files. In this case, delete old CVS files
find . -name ".#*" -delete


