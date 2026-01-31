#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_LINUX_KERNEL_VERSION := 5.4

TARGET_SOC_BASE := exynos2100

# UNIVERSAL common modules
BOARD_USES_EXYNOS_GRALLOC_VERSION := 4
BOARD_USES_ALIGN_RESTRICTION := true
BOARD_USES_GRALLOC_ION_SYNC := true

# Acryl
BOARD_LIBACRYL_DEFAULT_SCALER := mscl_votf

BOARD_LIBHDR_PLUGIN := //vendor/samsung/universal2100-common:vendor.samsung.libcolor.hardware
BOARD_LIBHDR10P_META_PLUGIN := //vendor/samsung/universal2100-common:vendor.samsung.libcolor.hdr10plus

# Codec2
BOARD_USE_CSC_FILTER := true
BOARD_SUPPORT_MFC_ENC_RGB := true
BOARD_USE_BLOB_ALLOCATOR := true

# Gralloc4
BOARD_GPU_SUPPORT_AFBC_BASIC := true
BOARD_GRALLOC_DPU_SUPPORT_1010102_AFBC := true
BOARD_GRALLOC_INIT_AFBC := true

# Graphics
BOARD_USES_EXYNOS_DATASPACE_FEATURE := true

# HWComposer
BOARD_USES_EXYNOS_AFBC_FEATURE := true
BOARD_USES_VRR_WINCONFIG := true

# H/W align restriction of MM IPs
BOARD_EXYNOS_S10B_FORMAT_ALIGN := 64

# Libhwjpeg
$(call soong_config_set,libhwjpeg,HWJPEG_ANDROID_VERSION,11)

# WifiDisplay
BOARD_USES_VIRTUAL_DISPLAY := true

# Scaler
BOARD_DEFAULT_CSC_HW_SCALER := 4
BOARD_USES_SCALER_M2M1SHOT := true

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
