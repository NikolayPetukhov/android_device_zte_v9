$(call inherit-product, device/zte/v9/device_v9.mk)

# Inherit some common CM stuff.
$(call inherit-product, device/zte/v9/common_mini_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=v9 BUILD_ID=ITL41D BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.0.1 ITL41D 223971 release-keys" BUILD_NUMBER=223971

PRODUCT_NAME := cm_v9
PRODUCT_DEVICE := v9
PRODUCT_RELEASE_NAME := V9

# Goo Manager supprt
PRODUCT_PROPERTY_OVERRIDES += \
   ro.goo.board=v9 \
   ro.goo.developerid=NikolayPetukhov \
   ro.goo.rom=cm9v9 \
   ro.goo.version=$(shell date +%Y%m%d) \
   ro.sf.lcd_density=160 \
   ro.sf.hwrotation=270 \
   qemu.sf.lcd_density=160

