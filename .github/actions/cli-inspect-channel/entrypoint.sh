#!/bin/sh -l

/replicated $@ > channel.json

CHANNEL_ID=$(cat channel.json | jq -r '.id')
echo "channel-id=$CHANNEL_ID" >> $GITHUB_OUTPUT