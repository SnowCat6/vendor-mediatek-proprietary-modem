
LOCAL_PATH := $(call my-dir)
MTK_MODEM_LOCAL_PATH := $(LOCAL_PATH)
MTK_MODEM_MDDB_FILES :=
MTK_MODEM_FIRMWARE_FILES :=
MTK_MODEM_PARTITION_FILES :=
MTK_MODEM_MAP_X_1_TO_YY := 2g wg tg lwg ltg sglte ultg ulwg ulwtg ulwcg ulwctg
MTK_MODEM_MAP_X_2_TO_YY := 2g wg tg lwg ltg sglte ultg ulwg ulwtg ulwcg ulwctg
MTK_MODEM_MAP_X_3_TO_YY := 2g 3g ulwcg ulwctg
MTK_MODEM_MAP_X_5_TO_YY := lwg ltg sglte

##### INSTALL MODEM FIRMWARE #####
$(foreach x,1 2,\
  $(if $(filter-out 0,$(strip $(MTK_MD$(x)_SUPPORT))),\
    $(foreach yy,$(MTK_MODEM_MAP_X_$(x)_TO_YY),\
      $(foreach z,n,\
        $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/modem_$(x)_$(yy)_$(z).img),\
          $(eval MTK_MODEM_FIRMWARE_FILES += modem_$(x)_$(yy)_$(z).img)\
          $(if $(filter l%g sglte ul%g,$(yy)),\
            $(eval MTK_MODEM_FIRMWARE_FILES += dsp_$(x)_$(yy)_$(z).bin)\
          )\
          $(if $(filter yes,$(strip $(MTK_MDLOGGER_SUPPORT))),\
            $(eval MTK_MODEM_FIRMWARE_FILES += catcher_filter_$(x)_$(yy)_$(z).bin)\
          )\
          $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/em_filter_$(x)_$(yy)_$(z).bin),\
            $(eval MTK_MODEM_FIRMWARE_FILES += em_filter_$(x)_$(yy)_$(z).bin)\
          )\
          $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/armv7_$(x)_$(yy)_$(z).bin),\
            $(eval MTK_MODEM_FIRMWARE_FILES += armv7_$(x)_$(yy)_$(z).bin)\
          )\
        )\
      )\
    )\
  )\
)
$(foreach x,3,\
  $(if $(filter-out 0,$(strip $(MTK_MD$(x)_SUPPORT))),\
    $(foreach yy,$(MTK_MODEM_MAP_X_$(x)_TO_YY),\
      $(foreach z,n,\
        $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/modem_$(x)_$(yy)_$(z).img),\
          $(eval MTK_MODEM_FIRMWARE_FILES += modem_$(x)_$(yy)_$(z).img)\
        )\
        $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/boot_$(x)_$(yy)_$(z).rom),\
          $(eval MTK_MODEM_FIRMWARE_FILES += boot_$(x)_$(yy)_$(z).rom)\
        )\
        $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/fsm_rf_df_$(x)_$(yy)_$(z).img),\
          $(eval MTK_MODEM_FIRMWARE_FILES += fsm_rf_df_$(x)_$(yy)_$(z).img)\
        )\
        $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/fsm_rw_df_$(x)_$(yy)_$(z).img),\
          $(eval MTK_MODEM_FIRMWARE_FILES += fsm_rw_df_$(x)_$(yy)_$(z).img)\
        )\
        $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/fsm_cust_df_$(x)_$(yy)_$(z).img),\
          $(eval MTK_MODEM_FIRMWARE_FILES += fsm_cust_df_$(x)_$(yy)_$(z).img)\
        )\
        $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/catcher_filter_$(x)_$(yy)_$(z).bin),\
          $(eval MTK_MODEM_FIRMWARE_FILES += catcher_filter_$(x)_$(yy)_$(z).bin)\
        )\
      )\
    )\
  )\
)
$(foreach x,5,\
  $(if $(filter-out 0,$(strip $(MTK_MD$(x)_SUPPORT))),\
    $(foreach yy,$(MTK_MODEM_MAP_X_$(x)_TO_YY),\
      $(foreach z,n,\
        $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/modem_$(x)_$(yy)_$(z).img),\
          $(eval MTK_MODEM_FIRMWARE_FILES += modem_$(x)_$(yy)_$(z).img)\
          $(eval MTK_MODEM_FIRMWARE_FILES += dsp_$(x)_$(yy)_$(z).bin)\
          $(if $(filter yes,$(strip $(MTK_MDLOGGER_SUPPORT))),\
            $(eval MTK_MODEM_FIRMWARE_FILES += catcher_filter_$(x)_$(yy)_$(z).bin)\
          )\
        )\
      )\
    )\
  )\
)
########INSTALL MODEM DATABASE########
ifeq ($(strip $(MTK_INCLUDE_MODEM_DB_IN_IMAGE)), yes)
ifeq ($(filter generic banyan banyan_x86,$(TARGET_DEVICE)),)
$(foreach x,1 2 3 5,\
  $(if $(filter-out 0,$(strip $(MTK_MD$(x)_SUPPORT))),\
    $(foreach yy,$(MTK_MODEM_MAP_X_$(x)_TO_YY),\
      $(eval MTK_MODEM_DATABASE_FROM := $(wildcard $(MTK_MODEM_LOCAL_PATH)/BPLGUInfoCustomAppSrcP_*_$(x)_$(yy)_*))\
      $(if $(strip $(MTK_MODEM_DATABASE_FROM)),,\
        $(eval MTK_MODEM_DATABASE_FROM := $(wildcard $(MTK_MODEM_LOCAL_PATH)/BPLGUInfoCustomApp_*_$(x)_$(yy)_*))\
      )\
      $(eval MTK_MODEM_MDDB_FILES += $(notdir $(MTK_MODEM_DATABASE_FROM)))\
      $(eval MTK_MODEM_MDDB_FILES += $(notdir $(wildcard $(MTK_MODEM_LOCAL_PATH)/DbgInfo_*_$(x)_$(yy)_*)))\
      $(eval MTK_MODEM_MDDB_FILES += $(notdir $(wildcard $(MTK_MODEM_LOCAL_PATH)/MDDB*_$(x)_$(yy)_*)))\
      $(eval MTK_MODEM_MDDB_FILES += $(notdir $(wildcard $(MTK_MODEM_LOCAL_PATH)/BPMdMetaDatabase_*_$(x)_$(yy)_*)))\
      $(eval MTK_MODEM_MDDB_FILES += $(notdir $(wildcard $(MTK_MODEM_LOCAL_PATH)/mdm_layout_desc_$(x)_$(yy)_*)))\
      $(eval mddb_check_wildcard := $(wildcard $(MTK_MODEM_LOCAL_PATH)/MDDB_*_$(x)_$(yy)_* $(MTK_MODEM_LOCAL_PATH)/MDDB.C2K.META_*_$(x)_$(yy)_*))\
      $(if $(filter 0 1,$(words $(mddb_check_wildcard))),,\
        $(info More than one MDDB files are found: $(mddb_check_wildcard))\
        $(info Please only keep the latest one)\
        $(error check-modem)\
      )\
    )\
  )\
)
endif
endif
########INSTALL MODEM PARTITION########
MTK_MODEM_PARTITION_FILES += $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/md1rom.img),md1rom.img)
MTK_MODEM_PARTITION_FILES += $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/md1dsp.img),md1dsp.img)
MTK_MODEM_PARTITION_FILES += $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/md1arm7.img),md1arm7.img)
MTK_MODEM_PARTITION_FILES += $(if $(wildcard $(MTK_MODEM_LOCAL_PATH)/md3rom.img),md3rom.img)

$(foreach item,$(MTK_MODEM_FIRMWARE_FILES),$(eval $(call mtk-install-modem,$(item),$(TARGET_OUT_VENDOR)/firmware)))
MTK_MODEM_MDDB_FILES_1 :=
ifneq ($(strip $(MTK_MODEM_MDDB_SYMBOL_LINK)),yes)
ifneq ($(strip $(MTK_MODEM_MDDB_FILES)),)
MTK_MODEM_MDDB_FILES_1 := $(firstword $(MTK_MODEM_MDDB_FILES))
MTK_MODEM_MDDB_SYMBOL_LINK := yes
endif
endif
MTK_MODEM_MDDB_FILES_2 := $(filter-out $(MTK_MODEM_MDDB_FILES_1),$(MTK_MODEM_MDDB_FILES))
$(foreach item,$(MTK_MODEM_MDDB_FILES_1),$(eval $(call mtk-install-modem,$(item),$(TARGET_OUT_VENDOR_ETC)/mddb,mkdir -p $(TARGET_OUT_ETC);ln -snf /vendor/etc/mddb $(TARGET_OUT_ETC)/mddb)))
$(foreach item,$(MTK_MODEM_MDDB_FILES_2),$(eval $(call mtk-install-modem,$(item),$(TARGET_OUT_VENDOR_ETC)/mddb)))
$(foreach item,$(MTK_MODEM_PARTITION_FILES),$(eval $(call mtk-install-modem,$(item),$(PRODUCT_OUT))))
MTK_MODEM_DATABASE_FILES := $(MTK_MODEM_INSTALLED_MODULES)
