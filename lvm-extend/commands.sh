
# Check current disk spacei
pvs

# Find logical volume
lsblk

# cfdisk /dev/sda
# pvresize /dev/sda3

# Check new size
pvs
vgs

lvdisplay
# lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv -r /dev/sda3

# All done
df -h
