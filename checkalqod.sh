#!/bin/bash
# checkalqod.sh
# Make sure alqod is always running.
# Add the following to the crontab (i.e. crontab -e)
# */5 * * * * ~/alqonode/checkalqod.sh

if ps -A | grep alqod > /dev/null
then
  exit
else
  /root/ALQO/alqod &
fi
