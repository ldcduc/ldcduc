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
