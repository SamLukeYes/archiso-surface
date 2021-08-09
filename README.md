# Arch Linux Live/Rescue Image for Microsoft Surface
Install Arch Linux or rescue your Linux installation on Surface even without external mouse or keyboard.

## Disclaimer
This live image and all the files in this repository are distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the [GNU General Public License](https://github.com/SamLukeYes/archiso-surface/blob/main/LICENSE) for more details.

## Supported Devices and Features
This live image uses [linux-surface](https://github.com/linux-surface/linux-surface/). The compatibility of linux-surface is described [here](https://github.com/linux-surface/linux-surface/wiki/Supported-Devices-and-Features#feature-matrix).

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
See [ArchWiki](https://wiki.archlinux.org/index.php/USB_flash_installation_medium). Please note that *this ISO is only designed for UEFI*.

## Installation Guide
For Arch Linux Installation Guide, please refer to [ArchWiki](https://wiki.archlinux.org/index.php/Installation_guide). Here are some additional notes.

### Run Reflector Manually
Since April 2021, `reflector` in this live image will not run automatically. You can run it at your option.

### Make your touchscreen work in a new installation
Follow [this guide](https://github.com/linux-surface/linux-surface/wiki/Installation-and-Setup#surface-kernel-installation) to install  necessary packages for your hardware to function. To make touchscreen actually usable in your new system, don't forget to set up [graphical user interface](https://wiki.archlinux.org/index.php/General_recommendations#Graphical_user_interface). You can do this in chroot, so that you don't have to boot into a system without touchscreen support.

### Restore your system using Timeshift
If you have existing snapshots created by Timeshift on your disk, you can use the Gtk interface of Timeshift to restore your system. Simply skip the initial configuration, select a snapshot, and restore it.

## Known Issues & Workarounds
### Auto rotation doesn't work
Since GNOME 40, automatic screen rotation cannot be enabled when a mouse is connected.
### Bluetooth menu disappears after turning off
If you want to enable bluetooth again, try turning it on in `Settings`. If it doesn't work, restart `bluetooth.service`.
### Onscreen keyboard can't pop up when a mouse is available
This might be a new behavior of GNOME 40. If you need to use the OSK with a mouse, please enable it in Accessibility Settings.
### Onscreen keyboard doesn't resize windows
See [this issue](https://github.com/nick-shmyrev/improved-osk-gnome-ext/issues/8).
### System sound volume control unavailable
Before August 2021, sound support is not available. Starting with the August release, you can control the master volume using `alsamixer`, which is added to favorite apps for convenience.