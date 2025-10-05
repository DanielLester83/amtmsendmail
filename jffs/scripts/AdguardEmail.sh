#! /bin/sh
echo "Require package jo . Install with: opkg install jo"
echo 'Schedule with cron . Install with: cru a AdguardEmail "0 23 * * * sh /jffs/scripts/AdguardEmail.sh"'

d=$(date +%Y-%m-%dT)
echo ${d}
output=$(cat /opt/etc/AdGuardHome/data/querylog.json | grep '"Text":"parental' | grep ${d} | jo -p -a)
echo ${output}

if [[ "${#output}" -gt 2 ]]; then
  /jffs/amtmsendmail "$output" "AdguardHome On Router Alert" "Blocked Site Due To Parental Filter"
fi
