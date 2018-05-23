
ifeq ($(strip $(MTK_IMS_SUPPORT)),yes)

PRODUCT_PACKAGES += libvolte_xdmc_shr
PRODUCT_PACKAGES += libvolte_core_shr
PRODUCT_PACKAGES += volte_ua
PRODUCT_PACKAGES += volte_stack
PRODUCT_PACKAGES += volte_imcb
PRODUCT_PACKAGES += libipsec_ims_shr
PRODUCT_PACKAGES += libverno

endif
