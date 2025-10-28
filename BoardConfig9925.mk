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

TARGET_SOC_BASE := s5e9925
TARGET_LINUX_KERNEL_VERSION := 5.10

# Gralloc
$(call soong_config_set,arm_gralloc,gralloc_version,four_sgr)

# GDC
$(call soong_config_set,libexynosgdc,use_legacy_function_alignment,true)

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
