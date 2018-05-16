#!/bin/bash
# checkBlocks.sh
# Make sure the daemon is not stuck.
# Add the following to the crontab (i.e. crontab -e)
# */20 * * * * ~/alqonode/checkBlocks.sh

previousBlock=$(cat ~/alqonode/blockcount)
currentBlock=$(/root/ALQO/alqo-cli getblockcount)

/root/ALQO/alqo-cli getblockcount > ~/alqonode/blockcount

if [ "$previousBlock" == "$currentBlock" ]; then
  /root/ALQO/alqo-cli stop
  sleep 10
  /root/ALQO/alqod
fi
