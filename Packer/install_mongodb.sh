#! /bin/bash -e
# Add the package verification key
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
# Add MongoDB to the repository sources list
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list

# Update the repository sources list once more
apt-get update

# Install MongoDB package (.deb)
apt-get install -y mongodb-10gen

# Create the default data directory
mkdir -p /data/db

##################### INSTALLATION END #####################
