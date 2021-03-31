# Arch Linux Live/Rescue CD for Microsoft Surface
Install Arch Linux or rescue your Linux installation with touchscreen, even if no physical keyboard or mouse is available.

## Supported Devices
This Live CD uses [linux-surface](https://github.com/linux-surface/linux-surface) and [iptsd](https://github.com/linux-surface/iptsd) for touchscreen support. This should work on any touchscreen device supported by `iptsd` or a generic kernel, but mainly focuses on the compatibility to Microsoft Surface. For now, it is tested on Surface Pro 6.

## Features
- Kernel parameters: `copytoram=y` & `reboot=pci`
- GNOME Shell and a few GNOME applications
- Use `timeshift` to restore your system
- [Improved Onscreen Keyboard](https://github.com/SebastianLuebke/improved-osk-gnome-ext) enabled by default
- Battery status display
- Auto screen rotation support
- `fish` as default shell
- Symbols and CJK fonts support
- Bootable with [Ventoy](https://ventoy.net)

## Building the ISO
```
$ git clone --recursive https://github.com/SamLukeYes/archiso-surface
# mkarchiso -v -w /path/to/work_dir -o /path/to/out_dir archiso-surface
```
For technical details, see [ArchWiki](https://wiki.archlinux.org/index.php/Archiso#Build_the_ISO)

## Known Issues & Workarounds

### Auto rotation doesn't work sometimes
Lock the screen rotation, unlock it again, and see if it works now.
### Bluetooth menu disappears after turning off
If you want to enable bluetooth again, try turning it on in `Settings`. If it doesn't work, restart `bluetooth.service`.
### Double tapping on Files can hardly work
Open `Files`, go to `Preferences` -> `Behavior`, and select `Single click to open items`.
### Onscreen Keyboard takes too much space on portrait screen
Set its portrait height in `Extensions`. For Surface Pro 6, 16% is recommended.