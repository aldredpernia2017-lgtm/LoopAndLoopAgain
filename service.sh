#!/system/bin/sh
. "$MODDIR/util_functions.sh"

# Panic key daemon
( while :; do
    if getevent -ql 1 2>/dev/null | grep -Eq "KEY_VOLUMEUP.*DOWN.*KEY_VOLUMEDOWN.*DOWN"; then
      sleep 6
      if getevent -ql 1 2>/dev/null | grep -Eq "KEY_VOLUMEUP.*DOWN.*KEY_VOLUMEDOWN.*DOWN"; then
        notify "Panic Key" "Safe mode activated"
        sh "$MODDIR/common/emergency_restore.sh" force
      fi
    fi
    sleep 0.5
  done ) &