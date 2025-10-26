#
# Copyright (C) 2025 The LineageOS Project
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
#

TARGET_LINUX_KERNEL_VERSION := 6.1

TARGET_SOC_BASE := s5e9945

# Surfaceflinger
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Gralloc
SOONG_CONFIG_sgr_enable_sajc := true
$(call soong_config_set,arm_gralloc,gralloc_version,four_sgr)

# Codec2
BOARD_USE_CSC_FILTER := true
BOARD_USE_DEC_SW_CSC := false
BOARD_SUPPORT_MFC_ENC_RGB := true
BOARD_USE_BLOB_ALLOCATOR := false
BOARD_USE_QUERY_HDR2SDR := false
BOARD_USE_GDC := true
BOARD_USE_HDR10PLUS_STAT_ENC := true
BOARD_USE_FULL_ST2094_40 := false # broken video recording
BOARD_HDR_DYNAMIC_META_LIB := librechdr10plus.plugin.so
BOARD_HW_SUPPORT_FILMGRAIN := true
BOARD_SUPPORT_MFC_ENC_BT2020 := true
BOARD_GPU_TYPE := sgpu
BOARD_USE_SUPPORT_GPU_SBWC := true
BOARD_USE_FLEXIBLE_P010 := true

# HWComposer
BOARD_USES_DISPLAY_COLOR_INTERFACE := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
HWC_SUPPORT_COLOR_TRANSFORM := true

# WifiDisplay
BOARD_USES_VIRTUAL_DISPLAY := true
BOARD_USES_DISABLE_COMPOSITIONTYPE_GLES := true
BOARD_USES_SECURE_ENCODER_ONLY := true

# Acryl
BOARD_LIBACRYL_DEFAULT_SCALER := mscl_sbwc_v2_7
$(call soong_config_set, sbwcwrapper, sbwcwrapper_priority, mscl)

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
