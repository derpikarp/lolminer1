#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

PROFILE=EXAMPLE1	

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"
while true
do
  ./lolMiner-144 -profile=$PROFILE $@
  if [ $? -eq 134 ]
  then
    break
  fi
done
