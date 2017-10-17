#!/bin/sh

if [ ! -d "/opt/pi-toolchain" ]; then
	echo "Get Raspberry Pi Cross Toolchain ..."
	mkdir -p /opt/pi-toolchain
	cd /opt/pi-toolchain
	git clone https://github.com/raspberrypi/tools.git ./
fi
echo "done."
