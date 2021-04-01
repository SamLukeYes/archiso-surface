# Arch Linux Live/Rescue CD for Microsoft Surface
Install Arch Linux or rescue your Linux installation with touchscreen, even if no physical keyboard or mouse is available.

## Disclaimer
This live system is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the [GNU General Public License](https://github.com/SamLukeYes/archiso-surface/blob/main/LICENSE) for more details.

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

## Getting started
You can download the ISO from [Releases](https://github.com/SamLukeYes/archiso-surface/releases), or build it with the following commands:
```
$ git clone --recursive https://github.com/SamLukeYes/archiso-surface
# mkarchiso -v -w /path/to/work_dir -o /path/to/out_dir archiso-surface
```
For technical details, see [ArchWiki](https://wiki.archlinux.org/index.php/Archiso#Build_the_ISO)

## Installation Guide
For Arch Linux Installation Guide, please refer to [ArchWiki](https://wiki.archlinux.org/index.php/Installation_guide). Here are some additional notes.

### Boot with Ventoy
This ISO is not actually [Ventoy Compatible](https://www.ventoy.net/en/compatible.html). To make it bootable with Ventoy, as far as I can tell, I have to keep `syslinux` installed *(legacy boot is not an expected boot method for this ISO)*, and rename `linux-surface` image to `linux`, making Ventoy think this is a standard archiso and do proper hook. This is quite a dirty workaround. If you've figured out how to make an archiso in a Ventoy Compatible way, please open an issue or a pull request.

### Surface Kernel Installation
You can do this after changing root into your target system, so that you don't have to boot into a system without `linux-surface` installed. Follow [this guide](https://github.com/linux-surface/linux-surface/wiki/Installation-and-Setup#surface-kernel-installation) to install all necessary packages for your touchscreen to function.

### Restore your system using Timeshift
If you have existing snapshots created by Timeshift on your disk, then you can use the Gtk interface of Timeshift to restore your system. Simply skip the initial configuration, select a snapshot, and restore it.

## Known Issues & Workarounds

### Auto rotation doesn't work sometimes
Lock the screen rotation, unlock it again, and see if it works now.
### Bluetooth menu disappears after turning off
If you want to enable bluetooth again, try turning it on in `Settings`. If it doesn't work, restart `bluetooth.service`.
### Double tapping on Files can hardly work
Open `Files`, go to `Preferences` -> `Behavior`, and select `Single click to open items`.
### Onscreen Keyboard takes too much space on portrait screen
Set its portrait height in `Extensions`. For Surface Pro 6, 16% is recommended.