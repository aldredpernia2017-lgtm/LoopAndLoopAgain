#!/system/bin/sh
. "$MODDIR/util_functions.sh"

sleep 80
restarts=0 old=0
for i in $(seq 1 18); do
  pid=$(pidof zygote || pidof zygote64 || echo 0)
  [ "$old" != "0" ] && [ "$pid" != "$old" ] && restarts=$((restarts+1))
  old="$pid"
  sleep 6
done

echo "$restarts" >> "$HISTORY"
echo 0 > "$COUNTER"
threshold=$(get_threshold)
notify "Good Boot" "$restarts restarts | Threshold: $threshold"
log "Good boot – threshold $threshold"