#!/system/bin/sh
ui_print " "
ui_print "╔══════════════════════════════════════╗"
ui_print "║     LoopAndLoopAgain ULTRA v7.0      ║"
ui_print "║             FINAL EDITION            ║"
ui_print "║               by Ragajd              ║"
ui_print "╚══════════════════════════════════════╝"
ui_print " "

ui_print "Cleaning old versions completely..."
rm -rf /data/adb/loopagain /data/adb/modules/LoopAndLoopAgain 2>/dev/null
pkill -f "LoopAndLoopAgain" 2>/dev/null

ui_print "Setting execute permissions..."
find $MODPATH -type f -name "*.sh" -exec chmod 755 {} \;

ui_print "Deploying ultimate whitelist..."
mkdir -p $MODPATH/config
cat > $MODPATH/config/whitelist.txt << EOF
LoopAndLoopAgain
shamiko
zygisk-next
zygisknext
playintegrityfix
tricky_store
kitsunemask
apatch
magisk
EOF

ui_print "LoopAndLoopAgain ULTRA v7.0 installed"
ui_print "Reboot now – you are untouchable."
ui_print " "