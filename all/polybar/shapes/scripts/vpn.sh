
#!/bin/bash

if [ -c /dev/net/tun ] ; then
echo "VPN: %{F#e2ee6a}$(/usr/sbin/ifconfig tun0 2>/dev/null | grep 'inet ' | awk '{print $2}')%{u-}";
else
echo "VPN: Disconnected";
fi
