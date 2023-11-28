#!/bin/bash

# Get the host's IP dynamically
HOST_IP=$(ip route | awk '/default/ { print $3 }')

# Add an entry to /etc/hosts with the host's IP
echo "$HOST_IP app.pokestation.com" >> /etc/hosts

# Start application
exec "$@"