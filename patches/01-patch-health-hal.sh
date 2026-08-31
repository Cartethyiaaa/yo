#!/bin/bash

BP_FILE="hardware/interfaces/health/aidl/default/Android.bp"

if [ ! -f "$BP_FILE" ]; then
    echo "[!] $BP_FILE not found — likely an Android 12.x tree (HIDL 2.1 health HAL, no AIDL path)."
    echo "[!] Skipping this patch, nothing to do."
    exit 0
fi

echo "[*] Creating backup of the original Android.bp..."
cp "$BP_FILE" "${BP_FILE}.bak"

echo "[*] Patching Android.bp to remove shared vintf_fragments..."
sed -i '/vintf_fragments: \["android.hardware.health-service.example.xml"\],/d' "$BP_FILE"

echo "[+] Android.bp successfully patched."
