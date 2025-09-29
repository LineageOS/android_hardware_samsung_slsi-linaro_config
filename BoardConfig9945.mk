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

TARGET_SOC_BASE := s5e9945
TARGET_LINUX_KERNEL_VERSION := 6.1

# Gralloc
$(call soong_config_set,sgr,backend,sgpu)
$(call soong_config_set,sgr,enable_sajc,true)
$(call soong_config_set,arm_gralloc,gralloc_version,four_sgr)

# HWC
BOARD_USES_HDR_INTERFACE := true
BOARD_USES_DISPLAY_COLOR_INTERFACE := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
HWC_SUPPORT_COLOR_TRANSFORM := true
BOARD_USES_HWC_CPU_PERF_MODE := true
$(call soong_config_set,exynos_hwc,uses_hwc_services,true)
$(call soong_config_set,libacryl,default_scaler,mscl_sbwc_v2_7)

# Codec2
$(call soong_config_set,openmax,USE_GDC,true)

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
