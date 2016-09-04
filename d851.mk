# Inherit
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.primary.msm8974 \
    audio_policy.msm8974 \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

# MSM8974
PRODUCT_PACKAGES += \
    camera.msm8974 \
    gps.msm8974 \
    keystore.msm8974 \
    lights.msm8974

# Display
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    memtrack.msm8974 \
    liboverlay

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.pn54x.default \
    com.android.nfc_extras \
    Tag

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw

# WiFi
PRODUCT_PACKAGES += \
    libnetcmdiface \
    hostapd \
    dhcpcd.conf \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

# Misc
PRODUCT_PACKAGES += \
    LGDoze \
    Snap \
    TimeService \
    qcrilmsgtunnel \
    shutdownlistener \
    qcnvitems \
    qcrilhook \
    liblge \
    libHevcSwDecoder \
    libtime_genoff

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.g3 \
    init.g3.rc \
    init.g3.power.rc \
    init.g3.usb.rc \
    init.msm8974.sensor.sh \
    init.qcom.sh \
    init.qcom.bt.sh \
    init.baseband.sh \
    init.sensors.sh \
    ueventd.g3.rc

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Bluetooth
PRODUCT_PACKAGES += \
    hwaddrs

# Radio
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    libxml2

# Default Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.adb.secure=0

# Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Libstagefright
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Media
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/d851/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/d851/prebuilt/vendor/lib/libI420colorconvert.so:system/vendor/lib/libI420colorconvert.so \
    device/lge/d851/prebuilt/vendor/lib/libmm-color-convertor.so:system/vendor/lib/libmm-color-convertor.so

# NFC
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    device/lge/d851/prebuilt/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    device/lge/d851/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml

# Dalvik-Hack
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/init.d/01dalvik:system/etc/init.d/01dalvik

# Boot Cleaner
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/init.d/81clean:system/etc/init.d/81clean

# BSOD Killer
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/init.d/89bsod:system/etc/init.d/89bsod

# Time services
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/bin/time_daemon:system/bin/time_daemon \
    device/lge/d851/prebuilt/vendor/lib/libTimeService.so:system/vendor/lib/libTimeService.so

# IR
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/sec_config:system/etc/sec_config \
    device/lge/d851/prebuilt/lib/hw/consumerir.msm8974.so:system/lib/hw/consumerir.msm8974.so \
    device/lge/d851/prebuilt/lib/libcir_driver.so:system/lib/libcir_driver.so

# ADSP
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/bin/adsprpcd:system/bin/adsprpcd \
    device/lge/d851/prebuilt/vendor/lib/libadsprpc.so:system/vendor/lib/libadsprpc.so \
    device/lge/d851/prebuilt/vendor/lib/libfastcvadsp_stub.so:system/vendor/lib/libfastcvadsp_stub.so \
    device/lge/d851/prebuilt/vendor/lib/libfastcvopt.so:system/vendor/lib/libfastcvopt.so

# Audio
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/acdbdata/Bluetooth_cal.acdb:system/etc/acdbdata/Bluetooth_cal.acdb \
    device/lge/d851/prebuilt/etc/acdbdata/General_cal.acdb:system/etc/acdbdata/General_cal.acdb \
    device/lge/d851/prebuilt/etc/acdbdata/Global_cal.acdb:system/etc/acdbdata/Global_cal.acdb \
    device/lge/d851/prebuilt/etc/acdbdata/Handset_cal.acdb:system/etc/acdbdata/Handset_cal.acdb \
    device/lge/d851/prebuilt/etc/acdbdata/Hdmi_cal.acdb:system/etc/acdbdata/Hdmi_cal.acdb \
    device/lge/d851/prebuilt/etc/acdbdata/Headset_cal.acdb:system/etc/acdbdata/Headset_cal.acdb \
    device/lge/d851/prebuilt/etc/acdbdata/Speaker_cal.acdb:system/etc/acdbdata/Speaker_cal.acdb \
    device/lge/d851/prebuilt/etc/audio_platform_info_bcm.xml:system/etc/audio_platform_info.xml \
    device/lge/d851/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/d851/prebuilt/etc/mixer_paths_bcm.xml:system/etc/mixer_paths.xml \
    device/lge/d851/prebuilt/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    device/lge/d851/prebuilt/vendor/lib/libacdbloader.so:system/vendor/lib/libacdbloader.so \
    device/lge/d851/prebuilt/vendor/lib/libacdbrtac.so:system/vendor/lib/libacdbrtac.so \
    device/lge/d851/prebuilt/vendor/lib/libadiertac.so:system/vendor/lib/libadiertac.so \
    device/lge/d851/prebuilt/vendor/lib/libaudcal.so:system/vendor/lib/libaudcal.so \
    device/lge/d851/prebuilt/vendor/lib/soundfx/libqcbassboost.so:system/vendor/lib/soundfx/libqcbassboost.so \
    device/lge/d851/prebuilt/vendor/lib/soundfx/libqcreverb.so:system/vendor/lib/soundfx/libqcreverb.so \
    device/lge/d851/prebuilt/vendor/lib/soundfx/libqcvirt.so:system/vendor/lib/soundfx/libqcvirt.so

# Qualcomm framework
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/bin/irsc_util:system/bin/irsc_util \
    device/lge/d851/prebuilt/vendor/lib/libdiag.so:system/vendor/lib/libdiag.so \
    device/lge/d851/prebuilt/vendor/lib/libdsi_netctrl.so:system/vendor/lib/libdsi_netctrl.so \
    device/lge/d851/prebuilt/vendor/lib/libdsutils.so:system/vendor/lib/libdsutils.so \
    device/lge/d851/prebuilt/vendor/lib/libidl.so:system/vendor/lib/libidl.so \
    device/lge/d851/prebuilt/vendor/lib/libqcci_legacy.so:system/vendor/lib/libqcci_legacy.so \
    device/lge/d851/prebuilt/vendor/lib/libqdi.so:system/vendor/lib/libqdi.so \
    device/lge/d851/prebuilt/vendor/lib/libqdp.so:system/vendor/lib/libqdp.so \
    device/lge/d851/prebuilt/vendor/lib/libqmi.so:system/vendor/lib/libqmi.so \
    device/lge/d851/prebuilt/vendor/lib/libqmi_cci.so:system/vendor/lib/libqmi_cci.so \
    device/lge/d851/prebuilt/vendor/lib/libqmi_client_qmux.so:system/vendor/lib/libqmi_client_qmux.so \
    device/lge/d851/prebuilt/vendor/lib/libqmi_common_so.so:system/vendor/lib/libqmi_common_so.so \
    device/lge/d851/prebuilt/vendor/lib/libqmi_csi.so:system/vendor/lib/libqmi_csi.so \
    device/lge/d851/prebuilt/vendor/lib/libqmi_csvt_srvc.so:system/vendor/lib/libqmi_csvt_srvc.so \
    device/lge/d851/prebuilt/vendor/lib/libqmi_encdec.so:system/vendor/lib/libqmi_encdec.so \
    device/lge/d851/prebuilt/vendor/lib/libqmiservices.so:system/vendor/lib/libqmiservices.so

# Radio
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/bin/netmgrd:system/bin/netmgrd \
    device/lge/d851/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/lge/d851/prebuilt/bin/rfs_access:system/bin/rfs_access \
    device/lge/d851/prebuilt/bin/rmt_storage:system/bin/rmt_storage \
    device/lge/d851/prebuilt/lib/libmdmdetect.so:system/lib/libmdmdetect.so \
    device/lge/d851/prebuilt/lib/libril.so:system/lib/libril.so \
    device/lge/d851/prebuilt/lib/libuicc.so:system/lib/libuicc.so \
    device/lge/d851/prebuilt/lib/libvss_common_idl.so:system/lib/libvss_common_idl.so \
    device/lge/d851/prebuilt/lib/libvss_common_iface.so:system/lib/libvss_common_iface.so \
    device/lge/d851/prebuilt/lib/libvss_nv_idl.so:system/lib/libvss_nv_idl.so \
    device/lge/d851/prebuilt/lib/libvss_nv_iface.so:system/lib/libvss_nv_iface.so \
    device/lge/d851/prebuilt/vendor/lib/libcneapiclient.so:system/vendor/lib/libcneapiclient.so \
    device/lge/d851/prebuilt/vendor/lib/libconfigdb.so:system/vendor/lib/libconfigdb.so \
    device/lge/d851/prebuilt/vendor/lib/libnetmgr.so:system/vendor/lib/libnetmgr.so \
    device/lge/d851/prebuilt/vendor/lib/libperipheral_client.so:system/vendor/lib/libperipheral_client.so \
    device/lge/d851/prebuilt/vendor/lib/libril-qc-qmi-1.so:system/vendor/lib/libril-qc-qmi-1.so \
    device/lge/d851/prebuilt/vendor/lib/libril-qcril-hook-oem.so:system/vendor/lib/libril-qcril-hook-oem.so

# Venus firmware
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/firmware/venus.b00:system/etc/firmware/venus.b00 \
    device/lge/d851/prebuilt/etc/firmware/venus.b01:system/etc/firmware/venus.b01 \
    device/lge/d851/prebuilt/etc/firmware/venus.b02:system/etc/firmware/venus.b02 \
    device/lge/d851/prebuilt/etc/firmware/venus.b03:system/etc/firmware/venus.b03 \
    device/lge/d851/prebuilt/etc/firmware/venus.b04:system/etc/firmware/venus.b04 \
    device/lge/d851/prebuilt/etc/firmware/venus.mbn:system/etc/firmware/venus.mbn \
    device/lge/d851/prebuilt/etc/firmware/venus.mdt:system/etc/firmware/venus.mdt

# WiFi
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/firmware/fw_bcmdhd.bin:system/etc/firmware/fw_bcmdhd.bin \
    device/lge/d851/prebuilt/etc/firmware/fw_bcmdhd_apsta.bin:system/etc/firmware/fw_bcmdhd_apsta.bin \
    device/lge/d851/prebuilt/etc/firmware/fw_bcmdhd_mfg.bin:system/etc/firmware/fw_bcmdhd_mfg.bin \
    device/lge/d851/prebuilt/etc/hostapd/hostapd_default.conf:/system/etc/hostapd/hostapd_default.conf \
    device/lge/d851/prebuilt/etc/wifi/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

# GPS
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/lge/d851/prebuilt/etc/izat.conf:system/etc/izat.conf \
    device/lge/d851/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    device/lge/d851/prebuilt/lib/libloc_ds_api.so:system/lib/libloc_ds_api.so \
    device/lge/d851/prebuilt/vendor/lib/libgeofence.so:system/vendor/lib/libgeofence.so \
    device/lge/d851/prebuilt/vendor/lib/libizat_core.so:system/vendor/lib/libizat_core.so \
    device/lge/d851/prebuilt/vendor/lib/liblbs_core.so:system/vendor/lib/liblbs_core.so

# Bluetooth
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    device/lge/d851/prebuilt/vendor/lib/libbtnv.so:system/vendor/lib/libbtnv.so

# Bluetooth firmware
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/vendor/firmware/BCM4335_003.001.009.0098.0414_B2_TMUS_USC_ORC.hcd:system/vendor/firmware/BCM4335_003.001.009.0098.0414_B2_TMUS_USC_ORC.hcd

# Camera
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/lge/d851/prebuilt/lib/hw/camera.vendor.msm8974.so:system/lib/hw/camera.vendor.msm8974.so \
    device/lge/d851/prebuilt/lib/libHDR.so:system/lib/libHDR.so \
    device/lge/d851/prebuilt/lib/libalmalib.so:system/lib/libalmalib.so \
    device/lge/d851/prebuilt/lib/libalmcascore.so:system/lib/libalmcascore.so \
    device/lge/d851/prebuilt/lib/libalmcaswrap.so:system/lib/libalmcaswrap.so \
    device/lge/d851/prebuilt/lib/libarcsoft_beauty_shot.so:system/lib/libarcsoft_beauty_shot.so \
    device/lge/d851/prebuilt/lib/libmm-qcamera.so:system/lib/libmm-qcamera.so \
    device/lge/d851/prebuilt/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    device/lge/d851/prebuilt/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    device/lge/d851/prebuilt/lib/libmorpho_image_stab31.so:system/lib/libmorpho_image_stab31.so \
    device/lge/d851/prebuilt/lib/libmorpho_noise_reduction.so:system/lib/libmorpho_noise_reduction.so \
    device/lge/d851/prebuilt/lib/libmorpho_video_denoiser.so:system/lib/libmorpho_video_denoiser.so \
    device/lge/d851/prebuilt/lib/libqomx_core.so:system/lib/libqomx_core.so \
    device/lge/d851/prebuilt/vendor/lib/libactuator_dw9714.so:system/vendor/lib/libactuator_dw9714.so \
    device/lge/d851/prebuilt/vendor/lib/libactuator_dw9714_camcorder.so:system/vendor/lib/libactuator_dw9714_camcorder.so \
    device/lge/d851/prebuilt/vendor/lib/libactuator_dw9714_camera.so:system/vendor/lib/libactuator_dw9714_camera.so \
    device/lge/d851/prebuilt/vendor/lib/libjpegdhw.so:system/vendor/lib/libjpegdhw.so \
    device/lge/d851/prebuilt/vendor/lib/libjpegehw.so:system/vendor/lib/libjpegehw.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_c2d_module.so:system/vendor/lib/libmmcamera2_c2d_module.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_cpp_module.so:system/vendor/lib/libmmcamera2_cpp_module.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_iface_modules.so:system/vendor/lib/libmmcamera2_iface_modules.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_imglib_modules.so:system/vendor/lib/libmmcamera2_imglib_modules.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_is.so:system/vendor/lib/libmmcamera2_is.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_isp_modules.so:system/vendor/lib/libmmcamera2_isp_modules.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_pproc_modules.so:system/vendor/lib/libmmcamera2_pproc_modules.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_sensor_modules.so:system/vendor/lib/libmmcamera2_sensor_modules.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_stats_algorithm.so:system/vendor/lib/libmmcamera2_stats_algorithm.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_stats_modules.so:system/vendor/lib/libmmcamera2_stats_modules.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_vpe_module.so:system/vendor/lib/libmmcamera2_vpe_module.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera2_wnr_module.so:system/vendor/lib/libmmcamera2_wnr_module.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera_faceproc.so:system/vendor/lib/libmmcamera_faceproc.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera_hdr_gb_lib.so:system/vendor/lib/libmmcamera_hdr_gb_lib.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera_imglib.so:system/vendor/lib/libmmcamera_imglib.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera_imx135.so:system/vendor/lib/libmmcamera_imx135.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera_imx208.so:system/vendor/lib/libmmcamera_imx208.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera_sonyimx135_eeprom.so:system/vendor/lib/libmmcamera_sonyimx135_eeprom.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera_tintless_algo.so:system/vendor/lib/libmmcamera_tintless_algo.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera_tintless_bg_pca_algo.so:system/vendor/lib/libmmcamera_tintless_bg_pca_algo.so \
    device/lge/d851/prebuilt/vendor/lib/libmmcamera_ubifocus_lib.so:system/vendor/lib/libmmcamera_ubifocus_lib.so \
    device/lge/d851/prebuilt/vendor/lib/libmmipl.so:system/vendor/lib/libmmipl.so \
    device/lge/d851/prebuilt/vendor/lib/libmmjpeg.so:system/vendor/lib/libmmjpeg.so \
    device/lge/d851/prebuilt/vendor/lib/libmmqjpeg_codec.so:system/vendor/lib/libmmqjpeg_codec.so \
    device/lge/d851/prebuilt/vendor/lib/liboemcamera.so:system/vendor/lib/liboemcamera.so \
    device/lge/d851/prebuilt/vendor/lib/libqomx_jpegenc.so:system/vendor/lib/libqomx_jpegenc.so \
    device/lge/d851/prebuilt/vendor/lib/libubifocus.so:system/vendor/lib/libubifocus.so

# Camera chromatix
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_common.so:system/vendor/lib/libchromatix_imx135_30fps_common.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_default_video.so:system/vendor/lib/libchromatix_imx135_30fps_default_video.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_common.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_common.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_default_video.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_default_video.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_hfr_120.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_hfr_120.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_hfr_60.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_hfr_60.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_liveshot.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_liveshot.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_mms_video.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_mms_video.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_preview.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_preview.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_snapshot.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_snapshot.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_uhd_video.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_uhd_video.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_video_dualrec.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_video_dualrec.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_video_hd.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_video_hd.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_video_hdr.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_video_hdr.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_fuji_video_qtr.so:system/vendor/lib/libchromatix_imx135_30fps_fuji_video_qtr.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_hfr_120.so:system/vendor/lib/libchromatix_imx135_30fps_hfr_120.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_hfr_60.so:system/vendor/lib/libchromatix_imx135_30fps_hfr_60.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_liveshot.so:system/vendor/lib/libchromatix_imx135_30fps_liveshot.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_mms_video.so:system/vendor/lib/libchromatix_imx135_30fps_mms_video.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_preview.so:system/vendor/lib/libchromatix_imx135_30fps_preview.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_snapshot.so:system/vendor/lib/libchromatix_imx135_30fps_snapshot.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_uhd_video.so:system/vendor/lib/libchromatix_imx135_30fps_uhd_video.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_video_dualrec.so:system/vendor/lib/libchromatix_imx135_30fps_video_dualrec.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_video_hd.so:system/vendor/lib/libchromatix_imx135_30fps_video_hd.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_video_hdr.so:system/vendor/lib/libchromatix_imx135_30fps_video_hdr.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx135_30fps_video_qtr.so:system/vendor/lib/libchromatix_imx135_30fps_video_qtr.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx208_common.so:system/vendor/lib/libchromatix_imx208_common.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx208_default_video.so:system/vendor/lib/libchromatix_imx208_default_video.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx208_mms_video.so:system/vendor/lib/libchromatix_imx208_mms_video.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx208_preview.so:system/vendor/lib/libchromatix_imx208_preview.so \
    device/lge/d851/prebuilt/vendor/lib/libchromatix_imx208_vt.so:system/vendor/lib/libchromatix_imx208_vt.so

# Camera firmware
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/firmware/DLdata_rev28B_data1.ecl:system/etc/firmware/DLdata_rev28B_data1.ecl \
    device/lge/d851/prebuilt/etc/firmware/DLdata_rev28B_data2.ecl:system/etc/firmware/DLdata_rev28B_data2.ecl \
    device/lge/d851/prebuilt/etc/firmware/DLdata_rev28B_data3.ecl:system/etc/firmware/DLdata_rev28B_data3.ecl \
    device/lge/d851/prebuilt/etc/firmware/bu24205_LGIT_rev16_1_2030_data1.bin:system/etc/firmware/bu24205_LGIT_rev16_1_2030_data1.bin \
    device/lge/d851/prebuilt/etc/firmware/bu24205_LGIT_rev16_1_2030_data2.bin:system/etc/firmware/bu24205_LGIT_rev16_1_2030_data2.bin \
    device/lge/d851/prebuilt/etc/firmware/bu24205_LGIT_rev16_1_2030_data3.bin:system/etc/firmware/bu24205_LGIT_rev16_1_2030_data3.bin \
    device/lge/d851/prebuilt/etc/firmware/bu24205_LGIT_rev7_1_data1.bin:system/etc/firmware/bu24205_LGIT_rev7_1_data1.bin \
    device/lge/d851/prebuilt/etc/firmware/bu24205_LGIT_rev7_1_data2.bin:system/etc/firmware/bu24205_LGIT_rev7_1_data2.bin \
    device/lge/d851/prebuilt/etc/firmware/bu24205_LGIT_rev7_1_data3.bin:system/etc/firmware/bu24205_LGIT_rev7_1_data3.bin \
    device/lge/d851/prebuilt/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    device/lge/d851/prebuilt/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    device/lge/d851/prebuilt/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw \
    device/lge/d851/prebuilt/etc/firmware/cpp_firmware_v1_2_1.fw:system/etc/firmware/cpp_firmware_v1_2_1.fw

# DRM
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/bin/qseecomd:system/bin/qseecomd \
    device/lge/d851/prebuilt/lib/drm/libdrmwvmplugin.so:system/lib/drm/libdrmwvmplugin.so \
    device/lge/d851/prebuilt/vendor/lib/libDivxDrm.so:system/vendor/lib/libDivxDrm.so \
    device/lge/d851/prebuilt/vendor/lib/libHevcSwDecoder.so:system/vendor/lib/libHevcSwDecoder.so \
    device/lge/d851/prebuilt/vendor/lib/libQSEEComAPI.so:system/vendor/lib/libQSEEComAPI.so \
    device/lge/d851/prebuilt/vendor/lib/libSHIMDivxDrm.so:system/vendor/lib/libSHIMDivxDrm.so \
    device/lge/d851/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    device/lge/d851/prebuilt/vendor/lib/libWVphoneAPI.so:system/vendor/lib/libWVphoneAPI.so \
    device/lge/d851/prebuilt/vendor/lib/libdrmdecrypt.so:system/vendor/lib/libdrmdecrypt.so \
    device/lge/d851/prebuilt/vendor/lib/libdrmdiag.so:system/vendor/lib/libdrmdiag.so \
    device/lge/d851/prebuilt/vendor/lib/libdrmfs.so:system/vendor/lib/libdrmfs.so \
    device/lge/d851/prebuilt/vendor/lib/libdrmtime.so:system/vendor/lib/libdrmtime.so \
    device/lge/d851/prebuilt/vendor/lib/libmmosal.so:system/vendor/lib/libmmosal.so \
    device/lge/d851/prebuilt/vendor/lib/librpmb.so:system/vendor/lib/librpmb.so \
    device/lge/d851/prebuilt/vendor/lib/libssd.so:system/vendor/lib/libssd.so \
    device/lge/d851/prebuilt/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    device/lge/d851/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    device/lge/d851/prebuilt/vendor/lib/mediadrm/libdrmclearkeyplugin.so:system/vendor/lib/mediadrm/libdrmclearkeyplugin.so \
    device/lge/d851/prebuilt/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so

# Sensors
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/bin/sensors.qcom:system/bin/sensors.qcom \
    device/lge/d851/prebuilt/etc/sensors/sensor_def_common.conf:system/etc/sensors/sensor_def_common.conf \
    device/lge/d851/prebuilt/vendor/lib/hw/sensors.msm8974.so:system/vendor/lib/hw/sensors.msm8974.so \
    device/lge/d851/prebuilt/vendor/lib/libsensor1.so:system/vendor/lib/libsensor1.so \
    device/lge/d851/prebuilt/vendor/lib/libsensor_reg.so:system/vendor/lib/libsensor_reg.so

# Graphics
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    device/lge/d851/prebuilt/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    device/lge/d851/prebuilt/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    device/lge/d851/prebuilt/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    device/lge/d851/prebuilt/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    device/lge/d851/prebuilt/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    device/lge/d851/prebuilt/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    device/lge/d851/prebuilt/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    device/lge/d851/prebuilt/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    device/lge/d851/prebuilt/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    device/lge/d851/prebuilt/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    device/lge/d851/prebuilt/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    device/lge/d851/prebuilt/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    device/lge/d851/prebuilt/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    device/lge/d851/prebuilt/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    device/lge/d851/prebuilt/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so \
    device/lge/d851/prebuilt/vendor/lib/libuiblur.so:system/vendor/lib/libuiblur.so

# Graphics firmware
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/etc/firmware/a330_pfp.fw:system/etc/firmware/a330_pfp.fw \
    device/lge/d851/prebuilt/etc/firmware/a330_pm4.fw:system/etc/firmware/a330_pm4.fw

# Perf
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/vendor/lib/libqti-perfd-client.so:system/vendor/lib/libqti-perfd-client.so

# Radio
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/bin/radish:system/bin/radish \
    device/lge/d851/prebuilt/etc/permissions/qcnvitems.xml:system/etc/permissions/qcnvitems.xml \
    device/lge/d851/prebuilt/etc/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
    device/lge/d851/prebuilt/lib/librmnetctl.so:system/lib/librmnetctl.so \
    device/lge/d851/prebuilt/vendor/lib/libsmemlog.so:system/vendor/lib/libsmemlog.so \
    device/lge/d851/prebuilt/vendor/lib/libsystem_health_mon.so:system/vendor/lib/libsystem_health_mon.so \
    device/lge/d851/prebuilt/vendor/lib/libxml.so:system/vendor/lib/libxml.so

# WCNSS
PRODUCT_COPY_FILES += \
    device/lge/d851/prebuilt/vendor/firmware/wcnss.b00:system/vendor/firmware/wcnss.b00 \
    device/lge/d851/prebuilt/vendor/firmware/wcnss.b01:system/vendor/firmware/wcnss.b01 \
    device/lge/d851/prebuilt/vendor/firmware/wcnss.b02:system/vendor/firmware/wcnss.b02 \
    device/lge/d851/prebuilt/vendor/firmware/wcnss.b04:system/vendor/firmware/wcnss.b04 \
    device/lge/d851/prebuilt/vendor/firmware/wcnss.b06:system/vendor/firmware/wcnss.b06 \
    device/lge/d851/prebuilt/vendor/firmware/wcnss.b07:system/vendor/firmware/wcnss.b07 \
    device/lge/d851/prebuilt/vendor/firmware/wcnss.b08:system/vendor/firmware/wcnss.b08 \
    device/lge/d851/prebuilt/vendor/firmware/wcnss.b09:system/vendor/firmware/wcnss.b09 \
    device/lge/d851/prebuilt/vendor/firmware/wcnss.mdt:system/vendor/firmware/wcnss.mdt
