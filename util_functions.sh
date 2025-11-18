#!/system/bin/sh
MODDIR=${0%/*}
BASE="/data/adb/loopagain"
COUNTER="$BASE/counter"
HISTORY="$BASE/history"
LOG="$BASE/log.txt"
WHITELIST="$MODDIR/config/whitelist.txt"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG"; }
mkdir -p "$BASE"

protect_self() {
  rm -f /data/adb/modules/LoopAndLoopAgain/{disable,remove} 2>/dev/null
  sed -i '/LoopAndLoopAgain/d' /data/adb/modules_disable 2>/dev/null || true
}
protect_self

notify() {
  cmd notification post -S sms --title "$1" --text "$2" --priority high LoopAndLoopAgain 2>/dev/null || true
}

get_threshold() {
  if [ ! -f "$HISTORY" ]; then echo 6; return; fi
  avg=$(tail -10 "$HISTORY" | awk '{sum += $1} END {print int(sum/NR)}')
  echo $((avg + 4))
}