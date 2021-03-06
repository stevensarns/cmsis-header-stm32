# Script is tested on OS X 10.12 and Ubuntu 12.04 LTS
# YOUR MILEAGE MAY VARY

# convert all files to unix line endings
find $1 -type f \( -iname "*.h" \) -print0 | xargs -0 -I header dos2unix header header
find $1 -type f \( -iname "*.h" \) -print0 | xargs -0 -I header chmod 644 header

# yay, computers
export LANG=C
export LC_CTYPE=C
export LC_ALL=C
# remove all trailing whitespace from the .h files
find $1 -type f \( -iname "*.h" \) -not \( -name .git -prune \) -print0 | xargs -0 sed -i 's/\s*$//'
