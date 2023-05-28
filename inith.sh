#/bin/ash
echo "stop cron"
/etc/init.d/cron stop
echo "stop cgminer"
/etc/init.d/cgminer stop
setpwm 100
sleep 1
downcode ethmem 1 0
downcode vx 1 0
sleep 1
downcode ethmem 1 0
downcode vx 1 0
echo "cron status"
/etc/init.d/cron start
/etc/init.d/cgminer restart
