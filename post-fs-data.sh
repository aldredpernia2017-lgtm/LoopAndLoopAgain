#!/system/bin/sh
. "$MODDIR/util_functions.sh"
protect_self

# Kernel panic check
if grep -iq "Kernel panic\|watchdog" /proc/last_kmsg 2>/dev/null; then
  echo 99 > "$COUNTER"
  notify "Kernel Crash" "Safe mode next boot"
fi

count=$(($(cat "$COUNTER" 2>/dev/null || echo 0) + 1))
echo $count > "$COUNTER"
log "Boot attempt #$count"

[ $count -ge 3 ] && sh "$MODDIR/common/emergency_restore.sh"