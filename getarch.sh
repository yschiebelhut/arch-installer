#!/bin/bash
# provide usage information
function usage {
	echo "-h hostname"
	echo "-d device to be setup with arch"

	exit 1
}
if [ $# -eq 0 ]; then
	usage
fi

# prepare individual settings
while getopts h:d: OPT; do
	case $OPT in
		h) NEW_HOSTNAME=$OPTARG;;
		d) DESTINATION_DRIVE=$OPTARG;;
	esac
done

echo $NEW_HOSTNAME
echo $DESTINATION_DRIVE
