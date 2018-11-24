$(eval $(call mtk-install-ims,\
    libwo,\
    .so,\
    SHARED_LIBRARIES,\
    libs/arm64/,\
    libs/arm/,\
))

$(eval $(call mtk-install-ims,\
    epdg_wod,\
    ,\
    EXECUTABLES,\
    libs/arm64/,\
    libs/arm/,\
    init_rc/init.wod.rc,\
))

