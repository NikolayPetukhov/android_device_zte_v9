# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Proprietary and common side of the device
$(call inherit-product, vendor/zte/v9/v9-vendor.mk)
$(call inherit-product, device/zte/common/device_zte.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := zte_v9
PRODUCT_DEVICE := v9
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE V9

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_AAPT_CONFIG := normal hdpi

# Libs
PRODUCT_PACKAGES += \
    sensors.v9 \
    audio.primary.v9 \
    audio_policy.v9 \
    camera.v9 \
    lights.v9

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Init
PRODUCT_COPY_FILES += \
    device/zte/v9/prebuilt/init.v9.rc:root/init.v9.rc \
    device/zte/v9/prebuilt/init.v9.usb.rc:root/init.v9.usb.rc \
    device/zte/v9/prebuilt/ueventd.v9.rc:root/ueventd.v9.rc \
    device/zte/v9/prebuilt/usbconfig:root/sbin/usbconfig

# Keypad files
PRODUCT_COPY_FILES += \
    device/zte/v9/prebuilt/usr/keylayout/v9-keypad.kl:system/usr/keylayout/v9-keypad.kl \
    device/zte/v9/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/v9/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

# WiFi
PRODUCT_COPY_FILES += \
    device/zte/v9/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/zte/v9/prebuilt/etc/fw_4329.bin:system/etc/fw_4329.bin \
    device/zte/v9/prebuilt/etc/fw_4329_apsta.bin:system/etc/fw_4329_apsta.bin \
    device/zte/v9/prebuilt/etc/nv_4329.txt:system/etc/nv_4329.txt

# touchscreen
PRODUCT_COPY_FILES += \
    device/zte/v9/prebuilt/usr/idc/msm-touchscreen.idc:system/usr/idc/msm-touchscreen.idc \
    device/zte/v9/prebuilt/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc

