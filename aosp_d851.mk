
# Device Stuff
$(call inherit-product, device/lge/d851/d851.mk)

# CM Stuff
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Release Name
PRODUCT_RELEASE_NAME := d851

# Bootanimation
TARGET_BOOTANIMATION_NAME := 1440

# Device Naming
PRODUCT_DEVICE := d851
PRODUCT_NAME := aosp_d851
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D851
PRODUCT_MANUFACTURER := LGE

# Device Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="g3_tmo_us" \
    PRIVATE_BUILD_DESC="g3_tmo_us-user 6.0 MRA58K 1609517159bca release-keys" \
    BUILD_FINGERPRINT="lge/g3_tmo_us/g3:6.0/MRA58K/1609517159bca:user/release-keys"
