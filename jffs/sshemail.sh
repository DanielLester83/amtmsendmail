#! /bin/sh                                                                                                                           #! /bin/sh
# enable by adding this line to /jffs/configs/profile.add
# /jffs/sshemail.sh &

/jffs/amtmsendmail "$(grep -P '.*auth succeeded.* from .*' -o /tmp/syslog.log | tail -1 | tr ':' ' ' )" "Router" "SSH User Logged In";

cp /tmp/home/root/.ash_history /tmp/home/root/.ash_history.tmp

Func() {
        /jffs/amtmsendmail "$(/opt/bin/grep -F -x -v -f /tmp/home/root/.ash_history.tmp /tmp/home/root/.ash_history | tr ':' ' ')" "Router" "SSH User Logged Out"
}

trap Func SIGHUP SIGTERM SIGTSTP

# Keep the script running
while true; do
        sleep 2147483647
done
