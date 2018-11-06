#!/bin/bash

# * * * * * "command to be executed"
# - - - - -
# | | | | |
# | | | | ----- Day of week (0 - 7) (Sunday=0 or 7)
# | | | ------- Month (1 - 12)
# | | --------- Day of month (1 - 31)
# | ----------- Hour (0 - 23)
# ------------- Minute (0 - 59)

head -n 4 email.txt >> tmp && echo "-$1" >> tmp
cat tmp > email.txt && rm tmp

echo "0 14 * * 5 cat $(pwd)/email.txt | mail -s 'TGIF' $2" >> mycron
crontab mycron
rm mycron
