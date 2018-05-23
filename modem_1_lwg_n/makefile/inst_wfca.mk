#################################################
# Install Binary and related RC files           #
#################################################

$(eval $(call mtk-install-ims,\
	wfca,\
	,\
	EXECUTABLES,\
	,\
	libs/arm/,\
	init_rc/init.wfca.rc,\
	,\
))

