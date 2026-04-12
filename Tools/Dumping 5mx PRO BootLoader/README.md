# Dumping Psion 5mx PRO BootLoader

![Splash](Pictures/splash.png)

Psion 5mx PRO has no embedded OS in the Mask ROM as in other machines. It has only a small (128 KB) BootLoader chip.  
It's an AT29LV010A Flash, attached to the CS7 signal.

![Snowdrop scheme](Pictures/snowrom.png) ![5mx PRO BootLoader chip](Pictures/BLGEv109.jpg)

Normally the device at CS7 is mapped to address 0x70000000, but in PRO, unlike other 5mx machines, MCU (Windermere) runs in Alternate Test ROM (yep, Test!).

![Snowdrop test mode](Pictures/snowatestm.png) ![Motherboards](Pictures/reverser.jpg)

So this actually reverses addresses mapping for all devices (ETNA and PCMCIA interface too), and now BL Flash is at 0x00000000 and machine can boot from it.  
(There are no Windermere documentation, but CL-PS7110 (used in Series 5) have a similar mode).

![CL-PS7110 test mode](Pictures/cltestmode.png)

Normally, there are no access to the BootLoader chip from the OS, as it's not MMU-mapped.  
A [special version](sys$rom.bin) of the standard 5mx PRO OS (Build 319) is modified to be able to dump this BootLoader Flash chip.

![Modified OS](Pictures/modspl.png)

If you have a machine with BootLoader different than **"S5mx BLGE v109"** (check the sticker on the chip); please dump it using the following steps:

1. Run ***PsiROMx*** (embedded);  
![PsiROMx](Pictures/psiromx.png)

2. Open ***Advanced options***;
3. Set ***Start address*** at **51200000**;
4. Set ***Size (KB)*** to **128**, ***End address*** must be at **51220000**;  
![Advanced options](Pictures/psiroaddr.png)

5. Select ***Save ROM***, set name (for example: **sys$bl.bin**);  
![Save ROM](Pictures/psironam.png)

6. Wait until dumping will be done;  
![Dumping](Pictures/psirord.png) ![Dumped](Pictures/psirodn.png)

7. Check the file size, it must be **128 KB** or **131072 Bytes**;  
![File properties](Pictures/sysblprop.png)

8. If all is ok, offer your file to this repository.

You can also dump your **EEPROM** (128 Bytes). Unpack additional software by installing **Special Tools.SIS**, then run **Show EEPROM.exe** (at **C:\\**) to list your EEPROM's contents to the screen.
Take a photo or make an MBM screenshot (**Shift + Ctrl + Fn + S**) and offer it to [bs0dd@bs0dd.net](<mailto:bs0dd@bs0dd.net?subject=Psion 5mx PRO EEPROM>).  
![Tools installation](Pictures/toolinst.png) ![Show EEPROM](Pictures/showep.png) ![EEPROM](Pictures/eeprom.png)

***For advanced users***: there are also an **ARLO** tool (Linux loader for Psions) in the Special Tools pack. It's not configured to run Linux, but included due to advanced and expert modes functionality. You can use it for reading and researching some memory sections. **Enjoy!**

------------------------------------------
**2026 © Bs0Dd [bs0dd.net]**
