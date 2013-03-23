#!/bin/sh
SECONDS=10800;
#SECONDS=3600;
PC=192.168.0.25
LAPPY=192.168.1.41
/sbin/pfctl -v -t windows_pcs -T add $PC
/sbin/pfctl -v -t public_terminal -T del $PC
/sbin/pfctl -v -t windows_pcs -T add $LAPPY
/sbin/pfctl -v -t public_terminal -T del $LAPPY
sleep $SECONDS;
/sbin/pfctl -v -t windows_pcs -T del $PC
/sbin/pfctl -v -t public_terminal -T add $PC
/sbin/pfctl -v -t windows_pcs -T del $LAPPY
/sbin/pfctl -v -t public_terminal -T add $LAPPY
