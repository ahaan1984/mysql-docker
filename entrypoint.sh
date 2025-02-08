#!/bin/bash
set -e

# Check if PORT is set, else default to 3306
MYSQL_PORT=${PORT:-3306}

# Update MySQL configuration to listen on MYSQL_PORT
# The configuration file might be located at /etc/my.cnf or similar
# Adjust the path as necessary based on the base image
sed -i "s/^port=.*/port=${MYSQL_PORT}/" /etc/my.cnf

# Bind MySQL to all network interfaces
sed -i "s/^bind-address.*/bind-address = 0.0.0.0/" /etc/my.cnf

# Start MySQL with the updated configuration
exec mysqld
