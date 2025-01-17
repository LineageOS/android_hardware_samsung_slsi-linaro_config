
ifneq ($(TARGET_SOC_BASE), exynos5420)
$(call soong_config_set,arm_gralloc,USES_EXYNOS_COMMON_GRALLOC,true)
endif

# HEVC Encoder H/W restriction
ifneq ($(filter exynos7885 exynos7872,$(TARGET_SOC_BASE)),)
ifneq ($(BOARD_MFC_CHROMA_VALIGN),)
$(call soong_config_set,arm_gralloc,MFC_CHROMA_VALIGN,$(BOARD_MFC_CHROMA_VALIG))
endif
endif

ifeq ($(BOARD_USES_EXYNOS5_GRALLOC_RANGE_FLUSH), true)
$(call soong_config_set,arm_gralloc,GRALLOC_RANGE_FLUSH,true)
endif

ifeq ($(BOARD_USES_EXYNOS5_CRC_BUFFER_ALLOC), true)
$(call soong_config_set,arm_gralloc,USES_EXYNOS_CRC_BUFFER_ALLOC,true)
endif

ifeq ($(BOARD_USES_ALIGN_RESTRICTION), true)
$(call soong_config_set,arm_gralloc,GRALLOC_MSCL_ALIGN_RESTRICTION,true)
$(call soong_config_set,arm_gralloc,GRALLOC_10B_ALIGN_RESTRICTION,true)
endif
