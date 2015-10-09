#!/bin/sh
[ -d "$HOME/bin" ] || /bin/mkdir -v $HOME/bin;
cd $HOME/bin;
for i in makeworld makekernel installkernel installworld portupgrade upsrc upports;
    do 
        echo "Fetching $i: ";
        /usr/bin/fetch --no-verify-hostname --no-verify-peer https://raw.githubusercontent.com/jnbek/freebsd-local/master/RELENG_10/scripts/$i;
        /bin/chmod -v 755 $i;
done;
