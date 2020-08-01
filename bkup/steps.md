## Add ntfs utilities to allow mounting usb drives

-- [ntfs-3g](https://archlinux.pkgs.org/rolling/archlinux-extra-aarch64/ntfs-3g-2017.3.23-4-aarch64.pkg.tar.xz.html)

--  ntfs-3g-2017.3.23-4-aarch64.pkg.tar.xz

> sudo pacman -Syu ntfs-3g

## Mount drive

> lsusb 
> lsblk -af

> sudo mount /dev/sda1 /mnt/

