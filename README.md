# Arch Linux Live/Rescue CD for Microsoft Surface
Install Arch Linux or rescue your Linux installation with touchscreen, even if no physical keyboard or mouse is available.

## Supported Devices
This Live CD uses [iptsd](https://github.com/linux-surface/iptsd) for touchscreen support, and should work on any device that is supported by `iptsd`. For now, it is mainly tested on Surface Pro 6.

## Features
- Comes with GNOME Shell and a few GNOME applications
- [Improved Onscreen Keyboard](https://github.com/SebastianLuebke/improved-osk-gnome-ext) enabled by default
- Auto screen rotation support
- Bootable with [Ventoy](https://ventoy.net)

## Building the ISO
```
$ git clone --recursive https://github.com/SamLukeYes/archiso-surface
# mkarchiso -v -w /path/to/work_dir -o /path/to/out_dir archiso-surface
```
For technical details, see [ArchWiki](https://wiki.archlinux.org/index.php/Archiso#Build_the_ISO)

## Known Issues & Workarounds

### Auto rotation doesn't work
Lock the screen rotation, unlock it again, and see if it works now.
### Bluetooth menu disappears after turning off
You'll need to start `bluetooth.service` again to re-enable bluetooth.
### Cannot input Wi-Fi password
Go to Wi-Fi Settings or use `nm-connection-editor` to edit connection and fill in the password manually. Alternatively, use `nmtui` to connect instead of GUI.
### Double click on Files doesn't work well with touchscreen
Go to `Preferences` -> `Behavior`, and select `Single click to open items`.
### Onscreen Keyboard takes too much space on portrait screen
Set its portrait height in Extensions.