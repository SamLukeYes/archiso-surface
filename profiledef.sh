#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archiso-surface"
iso_label="ARCH_$(date +%Y%m)"
iso_publisher="Sam L. Yes <https://github.com/SamLukeYes>"
iso_application="Arch Linux Live/Rescue Image for Microsoft Surface"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
bootmodes=('bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_tool_options=('-comp' 'zstd')
file_permissions=(
  ["/etc/sudoers.d"]="0:0:0750"
  ["/etc/shadow"]="0:0:400"
  ["/etc/gshadow"]="0:0:0400"
  ["/home/live"]="1000:1000:750"
  #["/root"]="0:0:750"
  #["/root/.automated_script.sh"]="0:0:755"
  #["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  #["/usr/local/bin/livecd-sound"]="0:0:755"
)
