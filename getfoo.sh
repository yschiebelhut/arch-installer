#!/bin/bash
function hostname {
	echo $1 > /home/sarius/host
}

while getopts h: OPT; do
	case $OPT in
		h) hostname $OPTARG;;
	esac
done
