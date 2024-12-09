ifdef BOARD_HWJPEG_ANDROID_VERSION
    $(call soong_config_set,libhwjpeg,HWJPEG_ANDROID_VERSION,$(BOARD_HWJPEG_ANDROID_VERSION))
    $(warning BOARD_BOARD_HWJPEG_ANDROID_VERSION is set, please use soong variables instead:)
    $(warning $$(call soong_config_set,libhwjpeg,BOARD_HWJPEG_ANDROID_VERSION,$(BOARD_HWJPEG_ANDROID_VERSION)))
endif

ifdef BOARD_LIBHWJPEG_USES_G2D
    $(call soong_config_set,libhwjpeg,LIBHWJPEG_USES_G2D,$(BOARD_LIBHWJPEG_USES_G2D))
    $(warning BOARD_LIBHWJPEG_USES_G2D is set, please use soong variables instead:)
    $(warning $$(call soong_config_set,libhwjpeg,LIBHWJPEG_USES_G2D,$(BOARD_LIBHWJPEG_USES_G2D)))
endif

ifdef BOARD_DEFAULT_CSC_HW_SCALER
    $(call soong_config_set,libcsc,DEFAULT_CSC_HW_SCALER,$(BOARD_DEFAULT_CSC_HW_SCALER))
    $(warning BOARD_DEFAULT_CSC_HW_SCALER is set, please use soong variables instead:)
    $(warning $$(call soong_config_set,libcsc,BOARD_DEFAULT_CSC_HW_SCALER,$(BOARD_DEFAULT_CSC_HW_SCALER)))
endif

ifdef BOARD_USES_ALIGN_RESTRICTION
    $(call soong_config_set,libexynosscaler,HAS_SCALER_ALIGN_RESTRICTION,$(BOARD_USES_ALIGN_RESTRICTION))
    $(call soong_config_set,arm_gralloc,uses_align_restriction,$(BOARD_USES_ALIGN_RESTRICTION))
    $(warning BOARD_USES_ALIGN_RESTRICTION is set, please use soong variables instead:)
    $(warning $$(call soong_config_set,libexynosscaler,BOARD_USES_ALIGN_RESTRICTION,$(BOARD_USES_ALIGN_RESTRICTION)))
    $(warning $$(call soong_config_set,arm_gralloc,uses_align_restriction,$(BOARD_USES_ALIGN_RESTRICTION)))
endif

ifneq ($(filter 3.18 4.4, $(TARGET_LINUX_KERNEL_VERSION)),)
    $(call soong_config_set,libexynosscaler,SCALER_USE_PREMUL_FMT,true))
    $(warning Please add the following line to one of your BoardConfigs:)
    $(warning $$(call soong_config_set,libexynosscaler,SCALER_USE_PREMUL_FMT,true))
endif

ifdef BOARD_USE_GIANT_MSCL
    $(call soong_config_set,giantmscl,use_giant_mscl,$(BOARD_USE_GIANT_MSCL))
    $(warning BOARD_USE_GIANT_MSCL is set, please use soong variables instead:)
    $(warning $$(call soong_config_set,giantmscl,use_giant_mscl,$(BOARD_USE_GIANT_MSCL)))
endif

ifdef BOARD_USES_EXYNOS_AFBC_FEATURE
    $(call soong_config_set,arm_gralloc,uses_exynos_afbc_feature,$(BOARD_USES_EXYNOS_AFBC_FEATURE))
    $(warning BOARD_USES_EXYNOS_AFBC_FEATURE is set, please use soong variables instead:)
    $(warning $$(call soong_config_set,arm_gralloc,uses_exynos_afbc_feature,$(BOARD_USES_EXYNOS_AFBC_FEATURE)))
endif

ifeq ($(TARGET_SOC_BASE), exynos3830)
    $(call soong_config_set,arm_gralloc,gralloc_scaler_wfd,true))
    $(warning Please add the following line to one of your BoardConfigs:)
    $(warning $$(call soong_config_set,arm_gralloc,gralloc_scaler_wfd,true))
endif

ifeq ($(TARGET_SOC), exynos7885)
    $(call soong_config_set,arm_gralloc,gralloc_ion_handle_import,false))
    $(warning Please add the following line to one of your BoardConfigs:)
    $(warning $$(call soong_config_set,arm_gralloc,gralloc_ion_handle_import,false))
endif

ifeq ($(BOARD_EXYNOS_S10B_FORMAT_ALIGN), 64)
    $(call soong_config_set,arm_gralloc,exynos_s10b_format_align,$(BOARD_EXYNOS_S10B_FORMAT_ALIGN))
    $(warning BOARD_EXYNOS_S10B_FORMAT_ALIGN is set, please use soong variables instead:)
    $(warning $$(call soong_config_set,arm_gralloc,exynos_s10b_format_align,$(BOARD_EXYNOS_S10B_FORMAT_ALIGN)))
endif

ifdef BOARD_USES_GRALLOC_ION_SYNC
    $(call soong_config_set,arm_gralloc,gralloc_ion_sync,$(BOARD_USES_GRALLOC_ION_SYNC))
    $(warning BOARD_USES_GRALLOC_ION_SYNC is set, please use soong variables instead:)
    $(warning $$(call soong_config_set,arm_gralloc,gralloc_ion_sync,$(BOARD_USES_GRALLOC_ION_SYNC)))
endif

ifdef BOARD_USES_EXYNOS_DATASPACE_FEATURE
    $(call soong_config_set,arm_gralloc,uses_exynos_dataspace_feature,$(BOARD_USES_EXYNOS_DATASPACE_FEATURE))
    $(warning BOARD_USES_EXYNOS_DATASPACE_FEATURE is set, please use soong variables instead:)
    $(warning $$(call soong_config_set,uses_exynos_dataspace_feature,$(BOARD_USES_EXYNOS_DATASPACE_FEATURE)))
endif
