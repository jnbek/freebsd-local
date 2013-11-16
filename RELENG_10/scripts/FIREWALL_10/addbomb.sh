#!/bin/sh
PC=192.168.0.25
LAPPY=192.168.1.41
/sbin/pfctl -v -t windows_pcs -T del $PC
/sbin/pfctl -v -t public_terminal -T add $PC
/sbin/pfctl -v -t windows_pcs -T del $LAPPY
/sbin/pfctl -v -t public_terminal -T add $LAPPY
