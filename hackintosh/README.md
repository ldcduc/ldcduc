# Hackintosh-ing you
Configuring my hackintosh  

## Hardware specifications

| Name | Model |
|---|---|
| CPU | Intel Core i3-9100 |
| Motherboard | Asus Prime Z390M-PLUS |
| RAM | Corsair Vengeance LPX DDR4 16GB 2666 Mhz |
| RAM | Corsair Vengeance LPX DDR4 16GB 2666 Mhz |
| SSD | Samsung 970 EVO Plus M.2 PCIe NVMe V-NAND 250GB

## Fix Intel UHD Graphics 630 7MB

* [reddit thread](https://www.reddit.com/r/hackintosh/comments/f2nu37/how_to_make_intel_uhd_630_work_on_catalina_10153/fhdspif/)
* [My config.plist](https://github.com/ldcduc/ldcduc/blob/main/hackintosh/EFI_shutdown_sound_1536uhd/CLOVER/config_1536MB.plist)
* The configuration to fix 7MB &rarr; 1536MB lies from line #173 to #220 + **add ig-platform-id** `igfxframe=0x3e9b0007` to **boot args** in line #115

## Fix Screen flickering

* The cause of Screen flickering is that it's failed to decode VDA - VDA Decoder failed.  
* To fix VDA Decoder &rarr; I must config the suitable SMBIOS my hackintosh (SMBIOS which fits my hardwares).  
* Fortunately find the config.plist on the internet which will work if I plug my Devices-configuration (iGPU config) in &rarr; it turned out working perfectly without graphic flaw, however, no usb port connected.
* My [config.plist](https://github.com/ldcduc/ldcduc/blob/main/hackintosh/EFI_shutdown-able_has-sound_has-usb-ports-UHD-1536MB_without-flickering/CLOVER/config.plist) (Fixing for USB ports lies from line #219 to #250)

![image](https://user-images.githubusercontent.com/31420144/103487341-3425ea80-4e37-11eb-8581-9a898126237f.png)

## References

* [WhateverGreen/Manual/FAQ.IntelHD.en.md](https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.IntelHD.en.md)
* [Завод Intel® Quick Sync Video](https://www.applelife.ru/threads/zavod-intel-quick-sync-video.817923/page-186#post-765336)
* [acidanthera/gfxutil](https://github.com/acidanthera/gfxutil) (I've not used this)
