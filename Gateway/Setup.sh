#!/bin/sh
wget -c https://github.com/lucianolagassa/TD-Tools/raw/master/Gateway/tdgateway.deb
dpkg -i tdgateway.deb
rm tdgateway.deb
