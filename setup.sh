#!/usr/bin/sudo /bin/bash
sudo modprobe -r iwldvm iwlwifi mac80211
modprobe -r iwlwifi mac80211 cfg80211
modprobe iwlwifi debug=0x40000 connector_log=0x1
if [ "$#" -ne 2 ]; then
    echo "default setting!"
    chn=64
    bw=HT20
else
    chn=$1
    bw=$2
fi
 
iwconfig wlan0 mode monitor 2>/dev/null 1>/dev/null
while [ $? -ne 0 ]
do
    iwconfig wlan0 mode monitor 2>/dev/null 1>/dev/null
done
 
ifconfig wlan0 up 2>/dev/null 1>/dev/null
while [ $? -ne 0 ]
do
  ifconfig wlan0 up 2>/dev/null 1>/dev/null
done
 
iw wlan0 set channel $chn $bw
sudo echo 0x4101 |sudo tee /sys/kernel/debug/ieee80211/phy0/iwlwifi/iwldvm/debug/monitor_tx_rate
