
# only 3.4 kernel
ifeq ($(filter-out 3.4, $(TARGET_LINUX_KERNEL_VERSION)),)
$(call soong_config_set,openmax,USE_EXYNOS_MEDIA_EXT,true)
endif

# since 3.10 kernel
ifneq ($(filter-out 3.4, $(TARGET_LINUX_KERNEL_VERSION)),)
$(call soong_config_set,openmax,USE_DEFINE_H264_SEI_TYPE,true)
endif

# since 3.18 kernel
ifneq ($(filter-out 3.4 3.10, $(TARGET_LINUX_KERNEL_VERSION)),)
$(call soong_config_set,openmax,USE_ORIGINAL_HEADER,true)
$(call soong_config_set,openmax,USE_MFC_HEADER,true)
endif

# since 4.19 kernel
ifneq ($(filter 4.19 5.4, $(TARGET_LINUX_KERNEL_VERSION)),)
$(call soong_config_set,openmax,MAINLINE_FEATURE_IN_SINCE_4_19,true)
endif


ifeq ($(BOARD_USE_HEVC_HWIP), true)
$(call soong_config_set,openmax,USE_HEVC_HWIP,$(BOARD_USE_HEVC_HWIP))
endif

ifeq ($(BOARD_USE_DEINTERLACING_SUPPORT), true)
$(call soong_config_set,openmax,USE_DEINTERLACING_SUPPORT,$(BOARD_USE_DEINTERLACING_SUPPORT))
endif

ifeq ($(BOARD_USE_SINGLE_PLANE_IN_DRM), true)
$(call soong_config_set,openmax,USE_SINGLE_PLANE_IN_DRM,$(BOARD_USE_SINGLE_PLANE_IN_DRM))
endif

ifneq ($(BOARD_USE_FRAMERATE_THRESH_HOLD),)
$(call soong_config_set,openmax,FRAMERATE_THRESH_HOLD,$(BOARD_USE_FRAMERATE_THRESH_HOLD))
endif

ifdef BOARD_EXYNOS_S10B_FORMAT_ALIGN
$(call soong_config_set,openmax,S10B_FORMAT_8B_ALIGNMENT,$(BOARD_EXYNOS_S10B_FORMAT_ALIGN))
endif

ifeq ($(BOARD_USE_DMA_BUF), true)
$(call soong_config_set,openmax,USE_DMA_BUF,$(BOARD_USE_DMA_BUF))
endif

ifeq ($(BOARD_USE_CSC_HW), true)
$(call soong_config_set,openmax,USE_CSC_HW,$(BOARD_USE_CSC_HW))
endif

ifeq ($(BOARD_USE_NON_CACHED_GRAPHICBUFFER), true)
$(call soong_config_set,openmax,USE_NON_CACHED_GRAPHICBUFFER,$(BOARD_USE_NON_CACHED_GRAPHICBUFFER))
endif

ifdef BOARD_MFC_CHROMA_VALIGN
$(call soong_config_set,openmax,CHROMA_VALIGN,$(BOARD_MFC_CHROMA_VALIGN))
else
$(call soong_config_set,openmax,CHROMA_VALIGN,1)
endif

ifeq ($(BOARD_USE_WA_ION_BUF_REF), true)
$(call soong_config_set,openmax,USE_WA_ION_BUF_REF,true)
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION), 3)
$(call soong_config_set,openmax,USE_WA_ION_BUF_REF,true)
endif

ifeq ($(BOARD_OMX_USES_EPIC), true)
$(call soong_config_set,openmax,OMX_USES_EPIC,true)
endif

ifeq ($(BOARD_USES_EXYNOS_DATASPACE_FEATURE), true)
$(call soong_config_set,openmax,USE_BT709_SUPPORT,true)
endif

ifeq ($(BOARD_USES_EXYNOS_GRALLOC_VERSION), 0)
$(call soong_config_set,openmax,GRALLOC_VERSION0,true)
$(call soong_config_set,openmax,USE_PRIV_FORMAT,true)
else
$(call soong_config_set,openmax,USE_PRIV_USAGE,true)
endif

ifeq ($(BOARD_USE_SKYPE_HD), true)
$(call soong_config_set,openmax,USE_SKYPE_HD,true)
endif

ifeq ($(BOARD_USE_FULL_ST2094_40), true)
$(call soong_config_set,openmax,USE_FULL_ST2094_40,true)
endif

ifeq ($(BOARD_USE_HDR10PLUS_STAT_ENC), true)
$(call soong_config_set,openmax,USE_FULL_ST2094_40,true)
endif

ifeq ($(BOARD_HAS_SCALER_ALIGN_RESTRICTION), true)
$(call soong_config_set,openmax,MSCL_EXT_SIZE,512)
else
$(call soong_config_set,openmax,MSCL_EXT_SIZE,0)
endif
