#################################################
# Install Pre-build Shared Library              #
#################################################

$(eval $(call mtk-install-ims,\
	libmdfx,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	libmal,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	libmal_datamngr,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	libmal_nwmngr,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	libmal_rilproxy,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	libmal_simmngr,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	libmal_mdmngr,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	libmal_rds,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	libmal_epdga,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	libmal_imsmngr,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

$(eval $(call mtk-install-ims,\
	volte_imsm,\
	.so,\
	SHARED_LIBRARIES,\
	libs/arm64/,\
	libs/arm/,\
))

#################################################
# Install Binary and related RC files           #
#################################################

$(eval $(call mtk-install-ims,\
	mtkmal,\
	,\
	EXECUTABLES,\
	, \
	libs/arm/,\
	init_rc/init.mal.rc,\
	,\
))
