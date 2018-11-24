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


$(eval $(call mtk-install-ims, libvolte_core_shr, .so, SHARED_LIBRARIES, , libs/arm/,))
$(eval $(call mtk-install-ims, libvolte_xdmc_shr, .so, SHARED_LIBRARIES, , libs/arm/,))

$(eval $(call mtk-install-ims, volte_stack,          , EXECUTABLES,      , libs/arm/, init_rc/init.volte_stack.rc))
$(eval $(call mtk-install-ims, volte_imcb,           , EXECUTABLES,      , libs/arm/, init_rc/init.volte_imcb.rc))
$(eval $(call mtk-install-ims, volte_ua,             , EXECUTABLES,      , libs/arm/, init_rc/init.volte_ua.rc))


#LOCAL_PATH := $(call my-dir)
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := libvolte_core_shr
#LOCAL_MODULE_SUFFIX :=.so
#LOCAL_MODULE_CLASS := SHARED_LIBRARIES
#LOCAL_MODULE_TAGS := optional
#LOCAL_PRELINK_MODULE := false
#
#LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
#LOCAL_SRC_FILES := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
#
#LOCAL_PROPRIETARY_MODULE   := true
#LOCAL_MODULE_OWNER         := mtk
#
#include $(BUILD_PREBUILT)
#
#LOCAL_PATH := $(call my-dir)
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := libvolte_xdmc_shr
#LOCAL_MODULE_SUFFIX :=.so
#LOCAL_MODULE_CLASS := SHARED_LIBRARIES
#LOCAL_MODULE_TAGS := optional
#LOCAL_PRELINK_MODULE := false
#
#LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
#LOCAL_SRC_FILES := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
#
#LOCAL_PROPRIETARY_MODULE   := true
#LOCAL_MODULE_OWNER         := mtk
#
#include $(BUILD_PREBUILT)
#
#
#
#################################################
# Install Binary and related RC files           #
#################################################
#
#LOCAL_PATH := $(call my-dir)
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := volte_imcb
#LOCAL_MODULE_CLASS := EXECUTABLES
#LOCAL_MODULE_TAGS := optional
#LOCAL_PRELINK_MODULE := false
#
#LOCAL_INIT_RC := init.volte_imcb.rc
#
#LOCAL_REQUIRED_MODULES  := init.volte_imcb.rc libvolte_core_shr libvolte_xdmc_shr

#LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_EXECUTABLES)
#LOCAL_SRC_FILES := bin/$(LOCAL_MODULE)
#
#LOCAL_PROPRIETARY_MODULE   := true
#LOCAL_MODULE_OWNER         := mtk
#
#include $(BUILD_PREBUILT)
#
#
#
###
#LOCAL_PATH := $(call my-dir)
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := volte_ua
#LOCAL_MODULE_CLASS := EXECUTABLES
#LOCAL_MODULE_TAGS := optional
#LOCAL_PRELINK_MODULE := false

#LOCAL_INIT_RC := init.volte_ua.rc
#
#LOCAL_REQUIRED_MODULES  := init.volte_ua.rc libvolte_core_shr libvolte_xdmc_shr
#
#LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_EXECUTABLES)
#LOCAL_SRC_FILES := bin/$(LOCAL_MODULE)
#
#LOCAL_PROPRIETARY_MODULE   := true
#LOCAL_MODULE_OWNER         := mtk
#
#include $(BUILD_PREBUILT)
#
##
#LOCAL_PATH := $(call my-dir)
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := volte_stack
#LOCAL_MODULE_CLASS := EXECUTABLES
#LOCAL_MODULE_TAGS := optional
#LOCAL_PRELINK_MODULE := false
#
#LOCAL_INIT_RC := init.volte_stack.rc
#
#LOCAL_REQUIRED_MODULES  := init.volte_stack.rc libvolte_core_shr libvolte_xdmc_shr libsipec_ims_shr
#
#LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_EXECUTABLES)
#LOCAL_SRC_FILES := bin/$(LOCAL_MODULE)
#
#LOCAL_PROPRIETARY_MODULE   := true
#LOCAL_MODULE_OWNER         := mtk
#
#include $(BUILD_PREBUILT)
#
#
#
#
#
