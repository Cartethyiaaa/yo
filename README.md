# OrangeFox Recovery Device Tree for Infinix Hot 50 Pro+ (X6886)

## Device Specifications

| Feature | Specification |
| :--- | :--- |
| **Device** | Infinix Hot 50 Pro+ |
| **Codename** | X6886 |
| **SoC** | MediaTek Helio G100 (MT6789) |
| **Architecture** | ARM64 (arm64-v8a) |
| **Kernel** | Linux 6.6 / MT6789 |
| **Android Version** | Android 16 (SDK 36) |
| **TEE Engine** | Trustonic Kinibi 700 (KeyMint 3.0) |
| **Storage / Decryption** | FBE v2 + Metadata Encryption (dm-default-key) |
| **Display** | 1080 x 2400 AMOLED (144Hz) |
| **Touch Panel** | FocalTech FT3683G (1:1 Scaling calibrated) |

---

## How to Build OrangeFox 16

### 1. Sync Minimal OrangeFox Manifest (fox_16.0)
```bash
repo init -u https://gitlab.com/OrangeFox/manifest.git -b fox_16.0 --depth=1
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

### 2. Clone this Device Tree
```bash
git clone https://github.com/Cartethyiaaa/yo.git device/infinix/X6886
```

### 3. Build the Recovery Image
```bash
source build/envsetup.sh
lunch fox_X6886-eng
mka recoveryimage -j$(nproc --all)
```

---

## Maintainer
- **Maintainer**: Cartethyiaaa
