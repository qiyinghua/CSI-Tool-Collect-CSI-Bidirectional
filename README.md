#  Linux 802.11n CSI Tool 监控模式下双向CSI采集（同时发送并接收数据）


# 使用 
此代码基于Linux 802.11n CSI Tool,请确保你已经安装并可以正常使用 
https://github.com/dhalperi/linux-80211n-csitool.

此代码运行在Linux 802.11n CSI Tool的监控模式下，下载此代码并替换到 linux-80211n-csitool-supplementary/injection 文件夹下.


1. 在 linux-80211n-csitool-supplementary/injection 文件夹下运行以下命令:
~~~
sudo chmod +x setup.sh
make
sudo ./setup.sh 64 HT20
sudo ./random_packets 10000 100 1 10000
~~~

2. 打开一个新的终端，在linux-80211n-csitool-supplementary/netlink 文件夹下运行以下命令:
~~~
sudo ./log_to_file csi_data.dat
~~~

3. 在另一台安装有Linux 802.11n CSI Tool 的计算机上重复上述操作. 双向CSI采集需要两台安装有CSI Tool的计算机.

# 说明
此代码在Ubuntu 12.04下测试通过，下载地址 http://releases.ubuntu.com/12.04.5/

#  Linux 802.11n CSI-Tool monitor-mode send and receive packet at the same time 

# Usage
This code is based on Linux 802.11n CSI Tool. Make sure you have installed it and can use it properly.
https://github.com/dhalperi/linux-80211n-csitool.

This code runs in the monitor mode of Linux 802.11n CSI Tool,download this code and replace to "linux-80211n-csitool-supplementary/injection" folder.

1. Run commands under "linux-80211n-csitool-supplementary/injection"  folder:
~~~
sudo chmod +x setup.sh
make
sudo ./setup.sh 64 HT20
sudo ./random_packets 1000 100 1 1000
~~~

2. Open a new terminal,Run commands under "linux-80211n-csitool-supplementary/netlink" folder:
~~~
sudo ./log_to_file csi_data.dat
~~~

3. Repeat this on another computer with Linux 802.11n CSI Tool .Bidirectional CSI acquisition requires two computers equipped with CSI Tools.

# Notice
This code work well under Ubuntu 12.04, download address http://releases.ubuntu.com/12.04.5/

