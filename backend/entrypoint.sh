#!/bin/bash

# Get the host's IP dynamically
HOST_IP=$(ip route | awk '/default/ { print $3 }')

# Add an entry to /etc/hosts with the host's IP
echo "$HOST_IP app.pokestation.com" >> /etc/hosts
echo "$HOST_IP auth.pokestation.com" >> /etc/hosts
sed "1s/127.0.0.1/$HOST_IP/" /etc/hosts >> ./temp_etc_hosts
echo "" > /etc/hosts
cat ./temp_etc_hosts >> /etc/hosts
rm ./temp_etc_hosts

# Start application
exec "$@"