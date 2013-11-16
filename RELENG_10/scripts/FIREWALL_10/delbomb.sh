#!/bin/sh
PC=192.168.0.25
LAPPY=192.168.1.41
/sbin/pfctl -v -t windows_pcs -T add $PC
/sbin/pfctl -v -t public_terminal -T del $PC
/sbin/pfctl -v -t windows_pcs -T add $LAPPY
/sbin/pfctl -v -t public_terminal -T del $LAPPY
