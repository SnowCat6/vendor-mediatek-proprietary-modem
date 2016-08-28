
LOCAL_PATH := $(call my-dir)
MTK_MODEM_LOCAL_PATH := $(LOCAL_PATH)
MTK_MODEM_MDDB_FILES :=
MTK_MODEM_FIRMWARE_FILES :=
MTK_MODEM_EXTMDDB_FILES :=
MTK_MODEM_MAP_X_1_TO_YY := 2g wg tg lwg ltg sglte
MTK_MODEM_MAP_X_2_TO_YY := 2g wg tg lwg ltg sglte
MTK_MODEM_MAP_X_3_TO_YY := 2g 3g
MTK_MODEM_MAP_X_5_TO_YY := lwg ltg sglte

##### INSTALL MODEM FIRMWARE #####
$(foreach x,1 2,\
  $(if $(filter yes,$(strip $(MTK_ENABLE_MD$(x)))),\
    $(foreach yy,$(MTK_MODEM_MAP_X_$(x)_TO_YY),\
      $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/modem_$(x)_$(yy)_n.img),\
        $(eval MTK_MODEM_FIRMWARE_FILES += modem_$(x)_$(yy)_n.img)\
        $(if $(filter lwg ltg sglte,$(yy)),\
          $(eval MTK_MODEM_FIRMWARE_FILES += dsp_$(x)_$(yy)_n.bin)\
        )\
        $(if $(filter yes,$(strip $(MTK_MDLOGGER_SUPPORT))),\
          $(eval MTK_MODEM_FIRMWARE_FILES += catcher_filter_$(x)_$(yy)_n.bin)\
        )\
      )\
    )\
  )\
)
$(foreach x,3,\
  $(if $(filter yes,$(strip $(MTK_ENABLE_MD$(x)))),\
    $(foreach yy,$(MTK_MODEM_MAP_X_$(x)_TO_YY),\
      $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/modem_$(x)_$(yy)_n.img),\
        $(eval MTK_MODEM_FIRMWARE_FILES += modem_$(x)_$(yy)_n.img)\
        $(eval MTK_MODEM_FIRMWARE_FILES += boot_$(x)_$(yy)_n.rom)\
        $(eval MTK_MODEM_FIRMWARE_FILES += fsm_rf_df_$(x)_$(yy)_n.img)\
        $(eval MTK_MODEM_FIRMWARE_FILES += fsm_rw_df_$(x)_$(yy)_n.img)\
        $(eval MTK_MODEM_FIRMWARE_FILES += fsm_cust_df_$(x)_$(yy)_n.img)\
      )\
    )\
  )\
)
$(foreach x,5,\
  $(if $(filter yes,$(strip $(MTK_ENABLE_MD$(x)))),\
    $(foreach yy,$(MTK_MODEM_MAP_X_$(x)_TO_YY),\
      $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/modem_$(x)_$(yy)_n.img),\
        $(eval MTK_MODEM_FIRMWARE_FILES += modem_$(x)_$(yy)_n.img)\
        $(eval MTK_MODEM_FIRMWARE_FILES += dsp_$(x)_$(yy)_n.bin)\
        $(if $(filter yes,$(strip $(MTK_MDLOGGER_SUPPORT))),\
          $(eval MTK_MODEM_FIRMWARE_FILES += catcher_filter_$(x)_$(yy)_n.bin)\
        )\
      )\
    )\
  )\
)
########INSTALL MODEM DATABASE########
ifeq ($(strip $(MTK_INCLUDE_MODEM_DB_IN_IMAGE)), yes)
ifeq ($(filter generic banyan banyan_x86,$(TARGET_DEVICE)),)
$(foreach x,1 2 5,\
  $(if $(filter yes,$(strip $(MTK_ENABLE_MD$(x)))),\
    $(foreach yy,$(MTK_MODEM_MAP_X_$(x)_TO_YY),\
      $(eval MTK_MODEM_DATABASE_FROM := $(wildcard $(MTK_MODEM_LOCAL_PATH)/BPLGUInfoCustomAppSrcP_*_$(x)_$(yy)_*))\
      $(if $(strip $(MTK_MODEM_DATABASE_FROM)),,\
        $(eval MTK_MODEM_DATABASE_FROM := $(wildcard $(MTK_MODEM_LOCAL_PATH)/BPLGUInfoCustomApp_*_$(x)_$(yy)_*))\
      )\
      $(eval MTK_MODEM_MDDB_FILES += $(notdir $(MTK_MODEM_DATABASE_FROM)))\
      $(eval MTK_MODEM_MDDB_FILES += $(notdir $(wildcard $(MTK_MODEM_LOCAL_PATH)/DbgInfo_*_$(x)_$(yy)_*)))\
    )\
  )\
)
endif
endif
########INSTALL MODEM DSDA########
ifneq ($(strip $(MTK_EXTERNAL_MODEM_SLOT)),)
ifneq ($(strip $(MTK_EXTERNAL_MODEM_SLOT)), 0)
ifeq ($(strip $(MTK_DT_SUPPORT)), yes)
ifeq ($(strip $(MTK_MODEM_FIRMWARE_FILES)),)
ifneq ($(wildcard $(MTK_MODEM_LOCAL_PATH)/EXT_MODEM_BB.cfg),)
  MTK_MODEM_FIRMWARE_FILES += \
                              catcher_filter_ext.bin \
                              EXT_MODEM_BB.cfg \
                              $(shell cat $(MTK_MODEM_LOCAL_PATH)/EXT_MODEM_BB.cfg | grep " - file:" | sed -e 's/ - file://')
  MTK_MODEM_EXTMDDB_FILES += $(notdir $(wildcard $(MTK_MODEM_LOCAL_PATH)/BPLGUInfoCustomApp*))
endif
endif
endif
endif
endif

$(foreach item,$(MTK_MODEM_FIRMWARE_FILES),$(eval $(call mtk-install-modem,$(item),$(TARGET_OUT_ETC)/firmware)))
$(foreach item,$(MTK_MODEM_MDDB_FILES),$(eval $(call mtk-install-modem,$(item),$(TARGET_OUT_ETC)/mddb)))
$(foreach item,$(MTK_MODEM_EXTMDDB_FILES),$(eval $(call mtk-install-modem,$(item),$(TARGET_OUT_ETC)/extmddb)))
MTK_MODEM_DATABASE_FILES := $(MTK_MODEM_INSTALLED_MODULES)

