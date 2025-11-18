#!/system/bin/sh
ui_print "Uninstalling LoopAndLoopAgain ULTRA..."
rm -rf /data/adb/loopagain
rm -f /system/etc/init.d/99loopimmortal.sh
cmd notification remove LoopAndLoopAgain 2>/dev/null
ui_print "Fully removed. Thank you, Ragajd ❤️"