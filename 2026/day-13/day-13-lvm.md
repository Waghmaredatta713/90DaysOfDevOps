# Day 13 – Linux Volume Management (LVM)

## 📌 Objective
Learn how to manage storage using LVM by creating, extending, and mounting logical volumes.

---

## 🛠️ Environment Setup

### 🔹 Switch to Root User
```bash
sudo -i
💽 Step 1: Create Virtual Disk
dd if=/dev/zero of=/tmp/disk1.img bs=1M count=1024
losetup -fP /tmp/disk1.img
losetup -a

Identified Device:

/dev/loop6
🔍 Step 2: Check Available Storage
lsblk
pvs
vgs
lvs
df -h

Observation:

nvme0n1 → OS disk (DO NOT USE)
loop6 → Virtual disk (used for LVM)
⚙️ Step 3: Create Physical Volume (PV)
pvcreate /dev/loop6
pvs
📦 Step 4: Create Volume Group (VG)
vgcreate devops-vg /dev/loop6
vgs
📁 Step 5: Create Logical Volume (LV)
lvcreate -L 500M -n app-data devops-vg
lvs
🧱 Step 6: Format and Mount
mkfs.ext4 /dev/devops-vg/app-data
mkdir -p /mnt/app-data
mount /dev/devops-vg/app-data /mnt/app-data
df -h /mnt/app-data
📈 Step 7: Extend Logical Volume
lvextend -L +200M /dev/devops-vg/app-data
resize2fs /dev/devops-vg/app-data
df -h /mnt/app-data
