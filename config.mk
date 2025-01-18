#
# Copyright (C) 2024 The LineageOS Project
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

PRODUCT_SOONG_NAMESPACES += \
    hardware/samsung_slsi-linaro/exynos \
    hardware/samsung_slsi-linaro/exynos5 \
    hardware/samsung_slsi-linaro/graphics \
    hardware/samsung_slsi-linaro/interfaces \
    hardware/samsung_slsi-linaro/openmax


ifeq ($(TARGET_SOC), exynos9610)
ifneq ($(BOARD_VENDOR), samsung)
PRODUCT_SOONG_NAMESPACES += \
    hardware/samsung_slsi-linaro/exynos/c2service \
    hardware/samsung_slsi-linaro/exynos/tee/kinibi410
endif
endif

ifeq ($(TARGET_SOC), exynos850)
PRODUCT_SOONG_NAMESPACES += \
    hardware/samsung_slsi-linaro/exynos/tee/kinibi500
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION),1)
PRODUCT_SOONG_NAMESPACES += \
    hardware/samsung_slsi-linaro/exynos/gralloc/gralloc1
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION),3)
PRODUCT_SOONG_NAMESPACES += \
    hardware/samsung_slsi-linaro/exynos/gralloc/gralloc3
endif