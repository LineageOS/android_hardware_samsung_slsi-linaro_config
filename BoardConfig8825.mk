#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_LINUX_KERNEL_VERSION := 5.10

TARGET_SOC_BASE := s5e8825

# Acryl
BOARD_LIBACRYL_DEFAULT_SCALER := mscl_votf

# Codec2
BOARD_USE_CSC_FILTER := true
BOARD_USE_FLEXIBLE_P010 := true
BOARD_USE_FULL_ST2094_40 := true

# Gralloc
BOARD_USES_EXYNOS_GRALLOC_VERSION := 4

# HWC
BOARD_LIBHDR10P_META_PLUGIN ?= //vendor/samsung/s5e8825-common:libhdr10p_meta_plugin_default
BOARD_LIBHDR_PLUGIN ?= //vendor/samsung/s5e8825-common:libhdr_plugin_exynos8825
BOARD_USES_DISPLAY_COLOR_INTERFACE := true
BOARD_USES_VIRTUAL_DISPLAY := true
HWC_SUPPORT_COLOR_TRANSFORM := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
