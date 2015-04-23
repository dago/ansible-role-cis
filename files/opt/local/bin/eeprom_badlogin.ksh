#!/bin/ksh

badCount=`eeprom security-#badlogins |\
	awk -F= '{ print $2 }'`
if [ -z "${badCount}" ]; then
	exit 0
elif [ ${badCount} != 0 ]; then
	logger -p auth.notice "EEPROM Security Bad Logins is ${badCount}."
fi
