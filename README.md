# Arch Linux Live/Rescue Image for Microsoft Surface Tablets
Install Arch Linux or rescue your Linux installation with touchscreen, even if no physical keyboard or mouse is available.

## Disclaimer
This live image and all the files in this repository are distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the [GNU General Public License](https://github.com/SamLukeYes/archiso-surface/blob/main/LICENSE) for more details.

## Supported Devices
This live system uses [linux-surface](https://github.com/linux-surface/linux-surface) and [iptsd](https://github.com/linux-surface/iptsd) for touchscreen support. This should work on any touchscreen device supported by `iptsd` or a generic kernel, but mainly focuses on the compatibility to Microsoft Surface tablets. For now, it is tested on Surface Pro 6.

## Features
- Copy squashfs to RAM at boot
- GNOME Shell and a few GNOME applications
- [Improved Onscreen Keyboard](https://github.com/nick-shmyrev/improved-osk-gnome-ext)
- Use `timeshift` to restore your system
- Battery status display
- Auto screen rotation support
- `fish` as default shell
- Symbols and CJK fonts support
- Bootable with [Ventoy](https://ventoy.net)

## Getting started
### Acquire the ISO
You can download the ISO from [Releases](https://github.com/SamLukeYes/archiso-surface/releases), or build it with the following commands:
```bash
$ git clone --recursive https://github.com/SamLukeYes/archiso-surface
$ sudo mkarchiso -v -w /path/to/work_dir -o /path/to/out_dir archiso-surface
```
For technical details, see [ArchWiki](https://wiki.archlinux.org/index.php/Archiso#Build_the_ISO)

### Creating live medium
See [ArchWiki](https://wiki.archlinux.org/index.php/USB_flash_installation_medium). Please note that *this ISO is only designed for UEFI*. It might boot from BIOS, but entirely untested, and the legacy bootloader may be removed in the future. For the reason why I keep it for now, see the [known issue](https://github.com/SamLukeYes/archiso-surface#not-ventoy-compatible) below.

## Installation Guide
For Arch Linux Installation Guide, please refer to [ArchWiki](https://wiki.archlinux.org/index.php/Installation_guide). Here are some additional notes.

### Run Reflector Manually
Since April 2021, `reflector` in this live image will not run automatically. You can run it at your option.

### Make your touchscreen work in a new installation
Follow [this guide](https://github.com/linux-surface/linux-surface/wiki/Installation-and-Setup#surface-kernel-installation) to install  necessary packages for your hardware to function. To make touchscreen actually usable in your new system, don't forget to set up [graphical user interface](https://wiki.archlinux.org/index.php/General_recommendations#Graphical_user_interface). You can do this in chroot, so that you don't have to boot into a system without touchscreen support.

### Restore your system using Timeshift
If you have existing snapshots created by Timeshift on your disk, you can use the Gtk interface of Timeshift to restore your system. Simply skip the initial configuration, select a snapshot, and restore it.

## Known Issues & Workarounds
### Not Ventoy Compatible
Though I mainly test this ISO with Ventoy, it is not actually [Ventoy Compatible](https://www.ventoy.net/en/compatible.html). In order to make it work with Ventoy, this live system keeps `syslinux` installed as legacy bootloader, and renames `linux-surface` image to `linux`, making Ventoy do proper hook as it does on a "standard" archiso. This is quite a dirty workaround. If you've figured out how to make an archiso in a Ventoy Compatible way, please open an issue or a pull request.
### Auto rotation doesn't work
Since GNOME 40, automatic screen rotation cannot be enabled when a mouse is connected.
### Bluetooth menu disappears after turning off
If you want to enable bluetooth again, try turning it on in `Settings`. If it doesn't work, restart `bluetooth.service`.
### Onscreen keyboard can't pop up when a mouse is available
This might be a new behavior of GNOME 40. If you need to use the OSK with a mouse, please enable it in Accessibility Settings.
### Onscreen keyboard doesn't resize windows
See [this issue](https://github.com/nick-shmyrev/improved-osk-gnome-ext/issues/8).
