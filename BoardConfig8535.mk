#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_LINUX_KERNEL_VERSION := 5.15

TARGET_SOC_BASE := s5e8825

# Gralloc
BOARD_USES_EXYNOS_GRALLOC_VERSION := 4
BOARD_EXYNOS_S10B_FORMAT_ALIGN := 64
SOONG_CONFIG_NAMESPACES += arm_gralloc
SOONG_CONFIG_arm_gralloc += \
    mfc_chroma_valign \
    gralloc_arm_no_external_afbc \
    gralloc_init_afbc \
    gralloc_ion_sync_on_lock \
    gralloc_product_vendor_version

SOONG_CONFIG_arm_gralloc_mfc_chroma_valign := true
SOONG_CONFIG_arm_gralloc_gralloc_arm_no_external_afbc := true
SOONG_CONFIG_arm_gralloc_gralloc_init_afbc := true
SOONG_CONFIG_arm_gralloc_gralloc_ion_sync_on_lock := true
SOONG_CONFIG_arm_gralloc_gralloc_product_vendor_version := true

# Codec2
BOARD_USE_CSC_FILTER := true
BOARD_USE_DMA_BUF := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_S3D_SUPPORT := false
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_SINGLE_PLANE_IN_DRM := true
BOARD_USE_WA_ION_BUF_REF := true

# HWC
BOARD_USES_HWC_SERVICES := false

# SCALER
BOARD_DEFAULT_CSC_HW_SCALER := 4
BOARD_USES_SCALER_M2M1SHOT := true
BOARD_HAS_SCALER_ALIGN_RESTRICTION := true

# Acryl
BOARD_LIBACRYL_DEFAULT_COMPOSITOR := no_default_compositor
BOARD_LIBACRYL_DEFAULT_SCALER := mscl_9810
BOARD_LIBACRYL_DEFAULT_BLTER := no_default_blter

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
