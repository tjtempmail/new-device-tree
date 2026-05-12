# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from Infinix-X659B device
$(call inherit-product, device/infinix/X659B/device.mk)

PRODUCT_DEVICE := X659B
PRODUCT_NAME := twrp_X659B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X659B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x659b_h696-user 11 RP1A.200720.011 346473 release-keys"

BUILD_FINGERPRINT := Infinix/X659B-OP/Infinix-X659B:11/RP1A.200720.011/230606V241:user/release-keys
