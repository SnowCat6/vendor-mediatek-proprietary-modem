#################################################
# Install Pre-build Shared Library              #
#################################################
 

#$(call mtk-install-ims,\
#             LOCAL_MODULE,\
#             LOCAL_MODULE_SUFFIX,\
#             LOCAL_MODULE_CLASS,\
#             path_of_LOCAL_SRC_FILES_arm64,\
#             path_of_LOCAL_SRC_FILES_arm,\
#             LOCAL_INIT_RC,\
#             LOCAL_REQUIRED_MODULES,\
#)


$(eval $(call mtk-install-ims,\
	libverno,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
	init_rc/init.md_apps.rc \
))
