#
# Copyright (C) 2024 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

CAMERA_PATH := device/xiaomi/camera
CAMERA_VENDOR_PATH := vendor/xiaomi/camera

# Permissions
PRODUCT_COPY_FILES += \
     $(call find-copy-subdir-files,*,$(CAMERA_PATH)/configs/permissions/,$(TARGET_COPY_OUT_SYSTEM)/etc)

# CameraX Config Overwrite
PRODUCT_COPY_FILES += \
     $(CAMERA_PATH)/configs/camera/camxoverridesettings.txt:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camxoverridesettings.txt

# Camera Extensions
PRODUCT_SYSTEM_PROPERTIES += \
    ro.camerax.extensions.enabled=true

# Camera Extensions permissions
PRODUCT_COPY_FILES += \
    $(CAMERA_PATH)/configs/permissions/extensions/camerax-vendor-extensions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/camerax-vendor-extensions.xml

# Device-Features
PRODUCT_COPY_FILES += \
     $(CAMERA_PATH)/configs/device_features/veux.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/device_features/veux.xml \
     $(CAMERA_PATH)/configs/device_features/peux.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/device_features/peux.xml \
     $(CAMERA_PATH)/configs/device_features/veux.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/veux.xml \
     $(CAMERA_PATH)/configs/device_features/peux.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/peux.xml \
     $(CAMERA_PATH)/configs/device_features/veux.xml:$(TARGET_COPY_OUT_VENDOR)/etc/device_features/veux.xml \
     $(CAMERA_PATH)/configs/device_features/peux.xml:$(TARGET_COPY_OUT_VENDOR)/etc/device_features/peux.xml

# XiaomiCamera Custom Configurations (veux / peux / general)
PRODUCT_COPY_FILES += \
     $(CAMERA_PATH)/configs/XiaomiCamera/general_config.json:$(TARGET_COPY_OUT_SYSTEM)/etc/XiaomiCamera/general_config.json \
     $(CAMERA_PATH)/configs/XiaomiCamera/veux.json:$(TARGET_COPY_OUT_SYSTEM)/etc/XiaomiCamera/veux.json \
     $(CAMERA_PATH)/configs/XiaomiCamera/peux.json:$(TARGET_COPY_OUT_SYSTEM)/etc/XiaomiCamera/peux.json \
     $(CAMERA_PATH)/configs/XiaomiCamera/general_config.json:$(TARGET_COPY_OUT_PRODUCT)/etc/XiaomiCamera/general_config.json \
     $(CAMERA_PATH)/configs/XiaomiCamera/veux.json:$(TARGET_COPY_OUT_PRODUCT)/etc/XiaomiCamera/veux.json \
     $(CAMERA_PATH)/configs/XiaomiCamera/peux.json:$(TARGET_COPY_OUT_PRODUCT)/etc/XiaomiCamera/peux.json \
     $(CAMERA_PATH)/configs/XiaomiCamera/general_config.json:$(TARGET_COPY_OUT_VENDOR)/etc/XiaomiCamera/general_config.json \
     $(CAMERA_PATH)/configs/XiaomiCamera/veux.json:$(TARGET_COPY_OUT_VENDOR)/etc/XiaomiCamera/veux.json \
     $(CAMERA_PATH)/configs/XiaomiCamera/peux.json:$(TARGET_COPY_OUT_VENDOR)/etc/XiaomiCamera/peux.json \
     $(CAMERA_PATH)/configs/qigsaw_splits/movielens.apk:$(TARGET_COPY_OUT_SYSTEM)/etc/XiaomiCamera/qigsaw_splits/movielens.apk \
     $(CAMERA_PATH)/configs/qigsaw_splits/movielens.apk:$(TARGET_COPY_OUT_PRODUCT)/etc/XiaomiCamera/qigsaw_splits/movielens.apk


# Shims
PRODUCT_PACKAGES += \
    libgui_camera_shim

# Symlinks (MiuiCamera Native Library Ecosystem)
PRODUCT_PACKAGES += \
    miui_camera_libcamera_algoup_symlink \
    miui_camera_libcamera_mianode_symlink \
    miui_camera_libmicampostproc_symlink \
    miui_camera_campostproc_vendor_symlink \
    miui_camera_libOpenCL_symlink \
    miui_camera_libmqsas_symlink \
    miui_camera_libcameraimpl_symlink \
    miui_camera_libopencl_camera_symlink \
    miui_camera_libgui_camera_shim_symlink \
    miui_camera_libmorpho_panorama_gp3_symlink \
    miui_camera_libmorpho_sensor_fusion_symlink \
    miui_camera_libmorpho_memory_allocator_symlink \
    miui_camera_libFUAuthHelper_symlink \
    miui_camera_libFUP2AHelper_symlink \
    miui_camera_libCNamaSDK_symlink \
    miui_camera_libfuai_symlink \
    miui_camera_libmimoji_avatarengine_symlink \
    miui_camera_libmimoji_jni_symlink \
    miui_camera_libmimoji_soundsupport_symlink \
    miui_camera_libmimoji_tracking_symlink \
    miui_camera_libmimoji_video2gif_symlink \
    miui_camera_libmimoji_bokeh_845_video_symlink \
    miui_camera_libpta_server_symlink \
    miui_camera_libarcsoft_wideselfie_symlink \
    miui_camera_libjni_wideselfie_symlink \
    miui_camera_libcamera_wideselfie_mpbase_symlink \
    miui_camera_libcamera_ambilight_ambt_qcom_symlink \
    miui_camera_libcamera_ambilight_utils_qcom_symlink \
    miui_camera_libcamera_arcsoft_beautyshot_symlink \
    miui_camera_libjni_arcsoft_beautyshot_symlink \
    miui_camera_libcamera_beauty_mpbase_symlink \
    miui_camera_libcamera_mialgo_ambilight_symlink \
    miui_camera_libDollyZoom_symlink \
    miui_camera_libinception_video_symlink \
    miui_camera_libmagicvideosky_symlink \
    miui_camera_librecord_video_symlink \
    miui_camera_libvad2_symlink \
    miui_camera_libvidsegment_symlink \
    miui_camera_libvvmediaeditor_symlink \
    miui_camera_libxmd_symlink \
    miui_camera_libfenshen_apu_v3_symlink \
    miui_camera_libfenshen_apu_v4_symlink \
    miui_camera_libfenshen_snpe_symlink \
    miui_camera_libQnnHtpAltPrepSkel_symlink \
    miui_camera_libQnnHtpAltPrepStub_symlink \
    miui_camera_libdmabufheap_symlink \
    miui_camera_libion_symlink \
    miui_camera_libmace_symlink \
    miui_camera_libc_plus_symlink \
    miui_camera_libffmpeg_symlink

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.miui.notch=1 \
    persist.sys.cam.skip_detach_image=true \
    log.tag.CHIUSECASE=ERROR

# Sepolicy Camera
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/camera/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/camera/private

# Sepolicy MiSys
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/misys/vendor

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/misys/private

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(CAMERA_PATH)/sepolicy/misys/public



# MiSys HIDL deps
PRODUCT_PACKAGES += \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0.vendor \
    android.hidl.memory.block@1.0 \
    android.hidl.memory.block@1.0.vendor \
    android.hidl.memory@1.0-impl

# RRO Overlays
PRODUCT_PACKAGES += \
    MiuiCameraOverlay \
    MiuiCameraOverlayLos \
    MiuiCameraOverlayAosp \
    PixelLauncherOverlayMiuiCamera

# Camera Properties (aligned with tested veux/peux vendor.prop)
PRODUCT_VENDOR_PROPERTIES += \
    camera.force_snaps_on_shutter_denoise=false \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.xiaomi.camera \
    persist.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.xiaomi.camera \
    persist.vendor.camera.privapp.list=com.android.camera,org.codeaurora.snapcam,com.shamim.cam \
    persist.vendor.camera.HAL3.enabled=1 \
    vendor.camera.lowpower.record.enable=0 \
    persist.vendor.cam.strip3pjfif=true \
    persist.vendor.cam.cname_tag=0x808d0000 \
    persist.vendor.cam.3pyuv_tag=0x808d0001 \
    persist.vendor.camera.logInfoMask=false

PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.vendor.display.type=oled \
    ro.vendor.audio.us.proximity=true \
    ro.miui.build.region=global

$(call inherit-product, $(CAMERA_VENDOR_PATH)/camera-vendor.mk)
