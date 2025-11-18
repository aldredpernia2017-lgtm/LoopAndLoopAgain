# LoopAndLoopAgain ULTRA v7.0
**The bootloop protector you flash once and never think about again.**

If you ever flashed a random module at 3 AM and bricked your phone — this module is for you.

### What it actually does
- Learns how many times zygote normally restarts on **your** device (every phone is different)
- If something goes wrong and you bootloop, it first disables only the modules you installed or updated in the last 48 hours (that’s almost always the problem)
- Still stuck? It disables everything except the whitelist (Zygisk, Shamiko, PIF, Tricky Store, etc. stay 100% safe)
- Detects kernel panics from the previous boot and jumps straight into safe mode
- Hold **Volume Up + Volume Down** for 6 seconds at any time → instant safe-mode reboot (works even when you’re already looping)
- Sends clean, high-priority Android notifications so you always know what’s going on
- Drops a full forensics report on your storage (`/sdcard/LoopUltra_Report_*.txt`) with recent modules + kernel messages
- Literally impossible to disable itself (6 different protections)
- Zero battery drain, zero spam

Tested daily on Pixel, Samsung, OnePlus, Xiaomi, Nothing — Android 11–15 — Magisk / Kitsune / APatch.

### Installation
1. Download the latest ZIP from Releases
2. Install in Magisk (or Kitsune/APatch) manager
3. Reboot

That’s it. You’re now free to flash anything.

### Whitelist
Want something else protected forever?  
Edit this file after install (root explorer needed):  
`/data/adb/modules/LoopAndLoopAgain/config/whitelist.txt`  
One module ID per line, no spaces, no quotes.

Default whitelist (already included):

LoopAndLoopAgain
shamiko
zygisk-next
zygisknext
playintegrityfix
tricky_store
kitsunemask
apatch
magisk


### Panic Key
Stuck in a bootloop with no way to open Magisk?  
Just hold **Volume Up + Volume Down** together for 6 seconds → phone reboots into safe mode automatically.

### Uninstall
Remove it like any normal module in Magisk — everything gets cleaned up properly.

### Author
Ragajd — 2025  
Made because I got tired of restoring backups at 4 AM.

Flash it, break your phone on purpose, thank me later.
