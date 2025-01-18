#
# Copyright (C) 2022-2023 The LineageOS Project
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

TARGET_LINUX_KERNEL_VERSION := 4.14

$(call soong_config_set,exynos_hwc,target_soc_base,exynos9610)

USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Gralloc
$(call soong_config_set,exynosgraphicbuffer,gralloc_version,three)
$(call soong_config_set,libgrallocwrapper,gralloc_version,three)
$(call soong_config_set,arm_gralloc,uses_align_restriction,true)
$(call soong_config_set,arm_gralloc,gralloc_ion_sync,true)
$(call soong_config_set,arm_gralloc,exynos_s10b_format_align,64)
$(call soong_config_set,arm_gralloc,uses_exynos_dataspace_feature,true)
$(call soong_config_set,arm_gralloc,uses_exynos_afbc_feature,true)

# Audio
ifeq ($(BOARD_VENDOR), samsung)
BOARD_USE_COMMON_AUDIOHAL := true
BOARD_USE_AUDIOHAL := true
endif

# Samsung OpenMAX Video
$(call soong_config_set,openmax,USE_DMA_BUF,true)
$(call soong_config_set,openmax,USE_NON_CACHED_GRAPHICBUFFER,true)
$(call soong_config_set,openmax,USE_HW_CSC_GRALLOC_SOURCE,true)
$(call soong_config_set,openmax,USE_CSC_HW,false)
$(call soong_config_set,openmax,USE_S3D_SUPPORT,false)
$(call soong_config_set,openmax,USE_DEINTERLACING_SUPPORT,true)
$(call soong_config_set,openmax,USE_HEVCENC_SUPPORT,true)
$(call soong_config_set,openmax,USE_HEVC_HWIP,false)
$(call soong_config_set,openmax,USE_VP9DEC_SUPPORT,true)
$(call soong_config_set,openmax,USE_VP9ENC_SUPPORT,true)
$(call soong_config_set,openmax,USE_WFDENC_SUPPORT,false)
ifeq ($(BOARD_VENDOR), samsung)
$(call soong_config_set,openmax,USE_CUSTOM_COMPONENT_SUPPORT,true)
endif
$(call soong_config_set,openmax,USE_VIDEO_EXT_FOR_WFD_HDCP,true)
$(call soong_config_set,openmax,USE_SINGLE_PLANE_IN_DRM,true)
$(call soong_config_set,openmax,USE_WA_ION_BUF_REF,true)

# HWComposer
$(call soong_config_set,exynos_hwc,GRALLOC_VERSION1,true)
$(call soong_config_set,exynos_hwc,GRALLOC_VERSION3,true)
ifneq ($(BOARD_VENDOR), samsung)
$(call soong_config_set,exynos_hwc,HWC_SUPPORT_COLOR_TRANSFORM,true)
$(call soong_config_set,exynos_hwc,HWC_SUPPORT_RENDER_INTENT,true)
endif
$(call soong_config_set,exynos_hwc,uses_hwc_services,false)
VSYNC_EVENT_PHASE_OFFSET_NS := 0
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 0

# SCALER
$(call soong_config_set,libcsc,DEFAULT_CSC_HW,4)
$(call soong_config_set,libexynosscaler,USES_SCALER_M2M1SHOT,true)
$(call soong_config_set,openmax,MSCL_EXT_SIZE,512)
$(call soong_config_set,libexynosscaler,HAS_SCALER_ALIGN_RESTRICTION,true)

# Acryl
$(call soong_config_set,libacryl,default_compositor,fimg2d_9610)
$(call soong_config_set,libacryl,default_scaler,mscl_9810)
$(call soong_config_set,libacryl,default_blter,fimg2d_9810_blter)

ifneq ($(BOARD_VENDOR), samsung)

$(call soong_config_set,libacryl,g2d9810_hdr_plugin,libacryl_plugin_slsi_hdr10)

$(call soong_config_set,libhwjpeg,HWJPEG_ANDROID_VERSION,10)

BOARD_USES_MOBICORE_TEE := true

endif

include hardware/samsung_slsi-linaro/config/BoardConfigCommon.mk
