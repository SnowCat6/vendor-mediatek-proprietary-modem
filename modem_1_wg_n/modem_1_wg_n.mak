#
#  Copyright Statement:
#  ---------------------------
#  This software/firmware and related documentation ("MediaTek Software") are
#  protected under relevant copyright laws. The information contained herein 
#  is confidential and proprietary to MediaTek Inc. and/or its licensors.  
#  Without the prior written permission of MediaTek inc. and/or its licensors,
#  any reproduction,modification, use or disclosure of MediaTek Software, and
#  information contained herein, in whole or in part, shall be strictly prohibited.
#   
#  MediaTek Inc.(C)2015.All rights reserved.
#
#  BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND
#  AGREES THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK 
#  SOFTWARE") RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED 
#  TO RECEIVER ON AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL 
#  WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED 
#  WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR 
#  NONINFRINGEMENT. NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER 
#  WITH RESPECT TO THE SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, 
#  INCORPORATED IN, OR SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER 
#  AGREES TO LOOK ONLY TO SUCH THIRD PARTY FOR ANY WARRANTY CLAIM RELATING 
#  THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES THAT IT IS RECEIVER'S SOLE 
#  RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES 
#  CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR 
#  ANY MEDIATEK SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO 
#  CONFORM TO A PARTICULAR STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND 
#  EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND CUMULATIVE LIABILITY WITH RESPECT 
#  TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,AT MEDIATEK'S OPTION, 
#  TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,OR REFUND ANY SOFTWARE 
#  LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO MEDIATEK FOR SUCH MEDIATEK 
#  SOFTWARE AT ISSUE. 
#
# *************************************************************************

# Generated at 2016-09-09 14:31:26

# ------------------------------ Modem specification
MODEM_SPEC = MTK_MODEM_3G_WCDMA
#
#  Copyright Statement:
#  ---------------------------
#  This software/firmware and related documentation ("MediaTek Software") are
#  protected under relevant copyright laws. The information contained herein 
#  is confidential and proprietary to MediaTek Inc. and/or its licensors.  
#  Without the prior written permission of MediaTek inc. and/or its licensors,
#  any reproduction,modification, use or disclosure of MediaTek Software, and
#  information contained herein, in whole or in part, shall be strictly prohibited.
#   
#  MediaTek Inc.(C)2011.All rights reserved.
#
#  BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND
#  AGREES THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK 
#  SOFTWARE") RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED 
#  TO RECEIVER ON AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL 
#  WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED 
#  WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR 
#  NONINFRINGEMENT. NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER 
#  WITH RESPECT TO THE SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, 
#  INCORPORATED IN, OR SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER 
#  AGREES TO LOOK ONLY TO SUCH THIRD PARTY FOR ANY WARRANTY CLAIM RELATING 
#  THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES THAT IT IS RECEIVER'S SOLE 
#  RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES 
#  CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR 
#  ANY MEDIATEK SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO 
#  CONFORM TO A PARTICULAR STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND 
#  EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND CUMULATIVE LIABILITY WITH RESPECT 
#  TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,AT MEDIATEK'S OPTION, 
#  TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,OR REFUND ANY SOFTWARE 
#  LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO MEDIATEK FOR SUCH MEDIATEK 
#  SOFTWARE AT ISSUE. 
#
# *************************************************************************

# Generated at 2012-11-29 14:23:02
EUTRAN_MODE_SUPPORT = NONE
  # Description:
  #   4G modem capability
  # Option Values:
  #   EUTRAN_MODE: Support EUTRAN mode
  #   NONE: NONE
  # Switch-ability:
  #   Non-switchable

UTRAN_MODE_SUPPORT = UTRAN_FDD_MODE
  # Description:
  #   3G modem capability
  # Option Values:
  #   UTRAN_FDD_MODE: Support 3G FDD
  #   UTRAN_TDD128_MODE: Support 3G TDD128
  #   NONE: NONE
  # Switch-ability:
  #   Non-switchable

GERAN_MODE_SUPPORT = GERAN_EGPRS_MODE
  # Description:
  #   2G modem capability
  # Option Values:
  #   GERAN_GSM_MODE: Support GSM only
  #   GERAN_GPRS_MODE: Support GPRS
  #   GERAN_EGPRS_MODE: Support EGPRS
  #   NONE: NONE
  # Switch-ability:
  #   Non-switchable

R99_SUPPORT = TRUE
  # Description:
  #   to enable R99 features to be R99 capable MS.
  # Option Values:
  #   TRUE: Enable this feature
  #   FALSE: Disable this feature
  # Switch-ability:
  #   Non-switchable

R4_SUPPORT = TRUE
  # Description:
  #   R4 and R5 protocol features,maily NACC and ExtULTBF for cusotmers
  # Option Values:
  #   TRUE: Enable this feature
  #   FALSE: Disable this feature
  # Switch-ability:
  #   Non-switchable

R5_SUPPORT = TRUE
  # Description:
  #   R4 and R5 protocol features,maily NACC and ExtULTBF for cusotmers
  # Option Values:
  #   TRUE: Enable this feature
  #   FALSE: Disable this feature
  # Switch-ability:
  #   Non-switchable

UMTS_MODE_SUPPORT = UMTS_FDD_MODE_SUPPORT
  # Description:
  #   The option is to switch the FDD or TDD mode for 3G modem
  # Option Values:
  #   UMTS_FDD_MODE_SUPPORT: 3G modem in FDD mode
  #   UMTS_TDD128_MODE_SUPPORT: 3G modem in TDD mode
  #   NONE: None of 3G modem mode is supported.
  # Switch-ability:
  #   Non-switchable

UMTS_RELEASE_SUPPORT = UMTS_R8_SUPPORT
  # Description:
  #   The option is to switch different version of release for 3G modem
  # Option Values:
  #   UMTS_R6_SUPPORT: 3G modem supports Rel6
  #   UMTS_R4_SUPPORT: 3G modem supports Rel4
  #   UMTS_R5_SUPPORT: 3G modem supports Rel5
  # Switch-ability:
  #   Non-switchable

DISABLE_A5_2 = TRUE
  # Description:
  #   Disable A5/2 cipering algo
  # Option Values:
  #   N/A
  # Switch-ability:
  #   Non-switchable

PBCCH_SUPPORT = FALSE
  # Description:
  #   Indicate whether MS supports PBCCH capability
  # Option Values:
  #   TRUE: Enable PBCCH capability
  #   FALSE: Disable PBCCH capability
  # Switch-ability:
  #   Non-switchable

L1_GPRS = TRUE
  # Description:
  #   Turn on the GPRS support of Layer 1
  #   This is used for internal test
  # Option Values:
  #   TRUE: GPRS enable
  #   FALSE: GPRS disable
  # Switch-ability:
  #   Non-switchable

L1_EGPRS = TRUE
  # Description:
  #   this compile option is only used for L1 Stand alone to turn on/off EDGE function
  # Option Values:
  #   TRUE: EGPRS enable
  #   FALSE: EGPRS disable
  # Switch-ability:
  #   Non-switchable

L1_WCDMA = TRUE
  # Description:
  #   Add an option to enable WCDMA L1 support
  # Option Values:
  #   TRUE: Support UMTS L1
  #   FALSE: Not support UMTS L1
  # Switch-ability:
  #   Non-switchable

HSDPA_SUPPORT = TRUE
  # Description:
  #   Define if UE supports HSDPA feature. (TRUE/FALSE)
  # Option Values:
  #   TRUE: HSDPA is support
  #   FALSE: HSDPA is not support
  # Switch-ability:
  #   Non-switchable

HSUPA_SUPPORT = TRUE
  # Description:
  #   Define if UE supports HSUPA feature. (TRUE/FALSE)
  # Option Values:
  #   TRUE: HSUPA is support
  #   FALSE: HSUPA is not support
  # Switch-ability:
  #   Non-switchable

L2_HSDPA_COPRO = TRUE
  # Description:
  #   Enable using L2 HSDPA Coprocessor
  # Option Values:
  #   TRUE: Enable L2 HSDPA Copro
  #   FALSE: Disable L2 HSDPA Copro
  # Switch-ability:
  #   Non-switchable

L2_HSUPA_COPRO = TRUE
  # Description:
  #   Enable using L2 HSUPA Coprocessor
  # Option Values:
  #   TRUE: Enable L2 HSUPA Copro
  #   FALSE: Disable L2 HSUPA Copro
  # Switch-ability:
  #   Non-switchable

UL2_HSPA_PLUS_RX_COPRO = TRUE
  # Description:
  #   The option is to enable R7R8 L2 RX copro and bytecopy
  # Option Values:
  #   TRUE: enable R7R8 L2 RX copro and bytecopy
  #   FALSE: disable R7R8 L2 RX copro and bytecopy
  # Switch-ability:
  #   Non-switchable

UL2_HSPA_PLUS_TX_COPRO = TRUE
  # Description:
  #   The option is to enable R7R8 L2 TX copro
  # Option Values:
  #   TRUE: enable R7R8 L2 TX copro
  #   FALSE: disable R7R8 L2 RX copro
  # Switch-ability:
  #   Non-switchable


# ------------------------------ Configurable Features
AFC_VCXO_TYPE = VCXO

OTP_SUPPORT = FALSE

BAND_SUPPORT = QUAD

RF_MODULE = MT6580RF_2G_CUSTOM

UMTS_RF_MODULE = CUSTOM_MT6580RF_UMTS_FDD

# ------------------------------ Verno information
VERNO = MOLY.WR8.W1449.MD.WG.MP.V91.5
BUILD = BUILD_NO
BRANCH = WR8.W1449.MD.WG.MP
# ------------------------------ System configurations
PLATFORM = MT6580

CHIP_VER = S00

BOARD_VER = VZ6580_WE_I_N_BB


#==============
  
CUSTOM_OPTION += 
# if you want to ture off L1_EPSK_TX please add following custom option
#CUSTOM_OPTION += __EPSK_TX_SW_SWITCH_OFF

# internal configuration
PROJECT_MAKEFILE_EXT = VZ6580_WE_I_N_HSPA_EXT
#
#  Copyright Statement:
#  ---------------------------
#  This software/firmware and related documentation ("MediaTek Software") are
#  protected under relevant copyright laws. The information contained herein 
#  is confidential and proprietary to MediaTek Inc. and/or its licensors.  
#  Without the prior written permission of MediaTek inc. and/or its licensors,
#  any reproduction,modification, use or disclosure of MediaTek Software, and
#  information contained herein, in whole or in part, shall be strictly prohibited.
#   
#  MediaTek Inc.(C)2015.All rights reserved.
#
#  BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND
#  AGREES THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS ("MEDIATEK 
#  SOFTWARE") RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED 
#  TO RECEIVER ON AN "AS-IS" BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL 
#  WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED 
#  WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR 
#  NONINFRINGEMENT. NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER 
#  WITH RESPECT TO THE SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, 
#  INCORPORATED IN, OR SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER 
#  AGREES TO LOOK ONLY TO SUCH THIRD PARTY FOR ANY WARRANTY CLAIM RELATING 
#  THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES THAT IT IS RECEIVER'S SOLE 
#  RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES 
#  CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR 
#  ANY MEDIATEK SOFTWARE RELEASES MADE TO RECEIVER'S SPECIFICATION OR TO 
#  CONFORM TO A PARTICULAR STANDARD OR OPEN FORUM. RECEIVER'S SOLE AND 
#  EXCLUSIVE REMEDY AND MEDIATEK'S ENTIRE AND CUMULATIVE LIABILITY WITH RESPECT 
#  TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,AT MEDIATEK'S OPTION, 
#  TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,OR REFUND ANY SOFTWARE 
#  LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TO MEDIATEK FOR SUCH MEDIATEK 
#  SOFTWARE AT ISSUE. 
#
# *************************************************************************

# Generated at 2016-09-09 14:31:26
2G_3SECTION_TEMPERATURE_COMP = FALSE
  # Description:
  #   Turn On/Off 3 section temperature compensation feature
  # Option Values:
  #   TRUE: SUPPORT 3 SECTION TEMP COMPENSATION
  #   FALSE: NOT SUPPORT 3 SECTION TEMP COMPENSATION
  # Switch-ability:
  #   Non-switchable

CUSTOM_CFLAGS = #-gdwarf-3
  # Description:
  #   Add custom cflag
  # Option Values:
  #   --debug --no_debug_macros: .
  # Switch-ability:
  #   Non-switchable


# =========================================================================
# Feature Options which customer can NOT modify
# =========================================================================
MIPI_SUPPORT = FALSE
  # Description:
  #   MIPI_SUPPORT= FALSE
  #   Description:
  #   Turn on/off this compile option to enable/disable MIPI support
  #   Option Values:
  #   TRUE: MIPI_SUPPORT enable
  #   FALSE: MIPI_SUPPORT disable
  #   Switch-ability:
  #   Non-switchable
  # Option Values:
  #   TRUE: MIPI_SUPPORT enable
  #   FALSE: MIPI_SUPPORT disable
  # Switch-ability:
  #   Non-switchable

MTK_BT_CHIP = MTK_CONSYS_MT6580
  # Description:
  #   Bluetooth chip type for BT phone call
  # Option Values:
  #   MTK_CONSYS_MT6571: Need to support software BT codec (CVSD / mSBC).
  #   MTK_CONSYS_MT6572: Need to support software BT codec (CVSD / mSBC).
  #   MTK_CONSYS_MT6582: Need to support software BT codec (CVSD / mSBC).
  #   MTK_CONSYS_MT6592: Need to support software BT codec (CVSD / mSBC).
  #   MTK_CONSYS_MT6752: Need to support software BT codec (CVSD / mSBC).
  #   MTK_MT6620: Need to support BT phone call PCM interface.
  #   MTK_MT6622: Need to support BT phone call PCM interface.
  #   MTK_MT6626: Need to support BT phone call PCM interface.
  #   MTK_MT6628: Need to support BT phone call PCM interface.
  #   MTK_MT6630: Need to support BT phone call PCM interface.
  #   NONE: No BT phone call.
  # Switch-ability:
  #   Non-switchable

RF_DRDI_CAPABILITY_SUPPORT = TRUE
  # Description:
  #   RF_DRDI_CAPABILITY_SUPPORT = TRUE  
  #   Description: 
  #   Option Values: 
  #   TRUE:Set to TRUE if support DRDI. 
  #   FALSE:Set to FALSE if not support DRDI.
  # Option Values:
  #   FALSE: Set to FALSE if not support DRDI.
  #   TRUE: Set to TRUE if support DRDI.
  # Switch-ability:
  #   Non-switchable


#[MTK internal used]# ------------------------------ 
ORIGINAL_VERNO = MOLY.WR8.W1449.MD.WG.MP.V91.5
DCO_SCA_MONITOR = FALSE
  # Description:
  #   Description:
  #   Option Values:
  #   TRUE:Set to TRUE if support DCO_SCA_MONITOR.
  #   FALSE:Set to FALSE if not support DCO_SCA_MONITOR.
  # Option Values:
  #   TRUE: TRUE:Set to TRUE if support DCO_SCA_MONITOR.
  #   FALSE: FALSE:Set to FALSE if not support DCO_SCA_MONITOR.
  # Switch-ability:
  #   Non-switchable


HW_VER = VZ6580_WE_I_N_HSPA_HW

DUAL_TALK_RX_GAIN_TABLE_CO_BAND_SUPPORT = FALSE

TEE_SECURE_SHAREDMEM_SUPPORT = FALSE

RPMB_SECURE_SHAREDMEM_SUPPORT = FALSE

CDMA_USE_MTK_BB_PMU = FALSE

EVDO_CT_SUPPORT = FALSE

L1_COCLK_REQUIREMENT_CHECK_SUPPORT = FALSE

DUAL_SIM_HOT_SWAP_CO_DECK = FALSE

ACC_NC_AFC_DB_UPDATE_SUPPORT = FALSE

CTA_ECC_SUPPORT = TRUE

MTK_CTA_SET = TRUE

2G_BPI_PT3A_SUPPORT = FALSE

USB_MULTIPLE_COMPORT_ENABLE = FALSE

2G_TX_VOLTAGE_COMPENSATION_SUPPORT = TRUE

FS_TRACE_SUPPORT = FALSE

SECURE_JTAG_ENABLE = TRUE

CHK_ENV_FLAG = TRUE

EXT_BL_UPDATE_SUPPORT = FALSE

KAL_TRACE_OUTPUT = FULL

GEMINI = 2

EDGE_CLASS_10 = FALSE

USB_HIGH_SPEED_COM_PORT_SUPPORT = FALSE

DRV_CUSTOM_TOOL_SUPPORT = TRUE

CUSTOM_NON_DEBUG_MODULES = NONE

FAST_DORMANCY_SUPPORT = TRUE

ECC_RETRY_ENHANCEMENT = TRUE

ENLARGE_CODE_BBM = FALSE

SIM_RECOVERY_ENHANCEMENT = TRUE

CHIP_VERSION_CHECK = TRUE

USB_BOOTUP_TRACE = FALSE

SIM_SWTICH_CONTROLLER_MT6306 = FALSE

CUSTOM_DEBUG_MODULES = NVRAM SYS_SVC SYS_DRV CONFIG

SMS_TOTAL_ENTRY = 500

FAX_SUPPORT = FALSE

KAL_RECORD_BOOTUP_LOG = FALSE

WCDMA_PREFERRED = TRUE

COMBO_MEMORY_SUPPORT = FALSE

RSAT_SUPPORT = MODEM_WITH_RSAT

DEMAND_PAGING_VERSION = DPV2

DRV_DEBUG_MEMORY_TRACE_SUPPORT = TRUE

SIP_RAM_SIZE = NONE

TST_WRITE_TO_FILE = FALSE

PHB_SYNC = ON

FEATURE_OVERLOAD = FALSE

PHB_PHONE_ENTRY = 10

PHB_FDN_ENTRY = 50

PHB_SIM_ENTRY = 1000

PARTIAL_TRACE_LIB = NONE

PHB_ADDITIONAL_SUPPORT = TRUE

USB_DOWNLOAD_IN_BL = NONE

WAV_CODEC = TRUE

L1_EPSK_TX = TRUE

MSDC_CARD_SUPPORT_TYPE = NONE

NOR_SUPPORT_RAW_DISK = FALSE

GPRS_MAX_PDP_SUPPORT = 6

SUB_BOARD_VER = PCB01

SECURE_VERSION = 1

MODIS_FDM = OFF

FS_DEDICATED_BUFFER = TRUE

L1_LOCK_AFCDAC_AT_STARTUP_SUPPORT = TRUE

NVRAM_PSEUDO_MERGE = OFF

EMMC_BOOTING = NONE

DUALTALK = FALSE

USB_SUPPORT = FALSE

SMS_PHONE_ENTRY = 10

REDUCE_HEADER_DEPTH = TRUE

NAND_FLASH_BOOTING = NONE

FS_OPEN_HINT_SUPPORT = TRUE

DMA_UART_VIRTUAL_FIFO = TRUE

L1_GPS_CO_CLOCK_SUPPORT = TRUE

GPS_SUPPORT = SMART_PHONE_MODEM

USB_IN_NORMAL_MODE_SUPPORT = FALSE

DMA_UART_VFIFO_TUNNEL_SUPPORT = FALSE

SIM_SWTICH_CONTROLLER_MT6302 = FALSE

GPRS_CLASS_10 = FALSE

SECURE_CUSTOM_NAME = MTK

SWLA_SELFSPACE_SUPPORT = FALSE

PHB_LN_ENTRY = 10

NDIS_SUPPORT = UPS

OPTR_SPEC_MODEM = NONE

PMIC = MT6350

SW_BINDING_SUPPORT = NONE

USB_COMPORT_PC_DRIVER_SUPPORT = MS

CMUX_SUPPORT = TRUE

SDS_SUPPORT = FALSE

MCU_DCM = DCM_ENABLE

EXT_CLOCK = EXT_26M

AEC_ENABLE = TRUE

SERIAL_FLASH_SUPPORT = FALSE

SMS_R8_NATION_LANGUAGE = FALSE

NAND_SUPPORT = FALSE

DATA_CARD_SPEECH = FALSE

USB_COM_PORT_SUPPORT = FALSE

EES_ENABLE = TRUE

MODEM_CARD = NONE

2G_RF_CUSTOM_TOOL_SUPPORT = TRUE

MAX_NUM_OF_NDIS_SUPPORT = 6

MCU_CLOCK = MCU_480M

KAL_ASSERT_LEVEL = KAL_ASSERT_LEVEL3

SIP_SERIAL_FLASH_SIZE = NONE

UMTS_TDD128_BAND_B = FALSE

TST_SET_LOG_BUF_SIZ = 17

CTM_SUPPORT = TRUE

PACKAGE_SEG = NONE

UMTS_TDD128_BAND_D = FALSE

LOW_COST_SUPPORT = NONE

UMTS_TDD128_BAND_E = FALSE

USB_MASS_STORAGE_CDROM_SUPPORT = FALSE

AMR_LINK_SUPPORT = TRUE

USB_HS_SUPPORT = FALSE

EDGE_SUPPORT = TRUE

NAND_SUPPORT_RAW_DISK = FALSE

UMTS_TDD128_BAND_A = FALSE

USB_MASS_STORAGE_SUPPORT = FALSE

RFC2507_SUPPORT = TRUE

GERAN_RELEASE_SUPPORT = GERAN_R8_SUPPORT

UMTS_TDD128_BAND_F = FALSE

UMTS_TDD128_BAND_C = FALSE

MDSYS = NONE

HW_PFC_SUPPORT = FALSE

AMRWB_LINK_SUPPORT = TRUE

SECURE_SUPPORT = FALSE

PLATFORM_FOR_CHECK = NONE

SECURE_RO_ENABLE = FALSE

IPV6_PDP_SUPPORT = TRUE

SECURE_PORT_SUPPORT = FALSE

RES_PROT = FALSE

USB_IN_META_SUPPORT = FALSE

32K_XOSC_REMOVE = TRUE

AGPS_SUPPORT = CONTROL_PLANE

AT_COMMAND_SET = FULL

SMS_OVER_PS_SUPPORT = TRUE

CUSTOMER_SPECIFIC_FACTORY_DETECTION = NONE

DT_SUPPORT = FALSE

SDIO_DEVICE_CONNECTIVITY = DISABLE

PPP_SUPPORT = NONE

MODEM_NFC_SUPPORT = TRUE

ENHANCED_SINGLE_BANK_NOR_FLASH_SUPPORT = FALSE

SML_SUPPORT = TRUE

BOOT_CERT_SUPPORT = FALSE

USIM_SUPPORT = TRUE

MCD_SUPPORT = TRUE

SYSDRV_BACKUP_DISK_SUPPORT = NONE

CSD_SUPPORT = NONE

MOBILE_BROADBAND = NONE

MULTIPLE_NDIS_SUPPORT = TRUE

TST_DNT_LOGGING = FALSE

IC_TEST_TYPE = NONE

RTOS = NUCLEUS_V2

KAL_DEBUG_LEVEL = NORMAL_DEBUG_KAL

SIM_HOT_SWAP = SIM_SLOT_1

RVCT_VERSION = NONE

TDD_HSDSCH_PHYSICAL_CATEGORY = NONE

MCU_DORMANT_MODE = TRUE

FS_RAMDISK = FALSE

FDD_HSDSCH_PHYSICAL_CATEGORY = 14

RRC_PAYLOAD_FOR_3G_UP_SUPPORT = FALSE

RVCT_PARTIAL_LINK = FALSE

3G_NEW_DATA_PLANE_ARCH = TRUE

L1D_LOOPBACK = 0

DEMO_PROJECT = FALSE

PLMN_LIST_PREF_SUPPORT = DEFAULT

SP_VIDEO_CALL_SUPPORT = TRUE

PS_HANDOVER = FALSE

ZIMAGE_FAVOR_ROM = FALSE

PPP_TYPE_PDP_DIALUP_SUPPORT = FALSE

GPRS_DIALUP_PPP_DROP_PACKETS_WHEN_2G_PS_SUSPEND = TRUE

L1_TDD128 = FALSE

DSP_SOLUTION = NONE

DSPIRDBG = FALSE

GPRS_DIALUP_PPP_SUPPORT_ESCAPE_ATO = TRUE

MULTIPLE_TBF = FALSE

R7R8_FULL_SET_SUPPORT = FALSE

BACKGROUND_SOUND = TRUE

MULTIPLE_PPP_DIALUP_SUPPORT = FALSE

TST_SUPPORT = TRUE

BIP_SCWS_SUPPORT = FALSE

CENTRALIZED_SLEEP_MANAGER = TRUE

UART3_SUPPORT = FALSE

MODEM_3G_LOGGING = FALSE

X_BOOTING = NONE

DUMMY_SCATTER_ENABLE = FALSE

L1_GPS_REF_TIME_SUPPORT = TRUE

BYTECOPY_SUPPORT = TRUE

CCBS_SUPPORT = FALSE

TST_LOGACC_SUPPORT = FALSE

ULCS_ASN_SUPPORT_VERSION = ULCS_ASN_SUPPORT_R99

AGPS_UP_CP_CONFLICT_HANDLING_SUPPORT = TRUE

UUS_SUPPORT = FALSE

MCD_CODESET_SHIFT_SUPPORT = 440000

TEST_LOAD_TYPE = NONE

HSUPA_CAPABILITY_NOT_SUPPORT = FALSE

USB_TETHERING = FALSE

RRLP_VER_SUPPORT = R7

EXT_MODEM_SUPPORT = FALSE

TDD_EDCH_PHYSICAL_CATEGORY = NONE

FLASH_DRV_IN_BL = NONE

PRODUCTION_RELEASE = TRUE

L1_CATCHER = TRUE

AST_SUPPORT = NONE

3G_VIDEO_CALL = FALSE

CNAP_SUPPORT = FALSE

ORIGINAL_FLAVOR = DEFAULT

TST_MALMO_SUPPORT = FALSE

L1_3GSOLUTION = MTK_UL1_FDD

MTK_SLEEP_ENABLE = TRUE

FDD_EDCH_PHYSICAL_CATEGORY = 6

3SET_F8F9_ENABLE = TRUE

AGPS_CP_SIB15_SUPPORT = TRUE

RTOS_DEBUG = TRUE

AST_CHIP_VERSION = NONE

SSS_SUPPORT = SSS_LIB

ORIGINAL_PROJECT_NAME = VZ6580_WE_I_N_HSPA

NOT_BENEFIT_FROM_BATTERY_CONSUMPTION_OPTIMISATION = FALSE

VENDOR = NONE

VAMOS_SUPPORT = TRUE

ZIMAGE_SUPPORT = FALSE

COMPILER = GCC

AOC_SUPPORT = TRUE

SMART_PHONE_CORE = ANDROID_MODEM

3G_DATA_PLANE_MEMORY_SHRINK = TRUE

MODEMRESERVEDSIZE_AUTOCONFIG = TRUE

GCC_WARN_AS_ERROR = FALSE

GEMINI_VERSION = V2

OP01_2G_ONLY = FALSE

L1L2_TX_NEW_ARCH = TRUE


# *************************************************************************
# Release Setting Section
# *************************************************************************
RELEASE_PACKAGE		= REL_CR_BASIC	# REL_CR_MMI_GPRS, REL_CR_MMI_GSM, REL_CR_L4_GPRS, REL_CR_L4_GSM REL_SUB_UAS_UMTS
RELEASE_PACKAGE_SUB_PS = REL_SUB_PROTOCOL

RELEASE_$(strip $(INPUT_METHOD)) = SRC	# MTK/SRC, only works when INPUT_METHOD is turning on
RELEASE_INPUT_METHODS_SRC =		# MMI_ZI, MMI_T9, MMI_ITAP,
RELEASE_TYPE = NONE           # NONE, INTERNAL
############################################################

# *************************************************************************
# Consistent Feature Options
# *************************************************************************
COM_DEFS_FOR_MT6580RF_2G_CUSTOM  = MT6580RF_2G_RF MT6580RF_2G_CUSTOM
COM_DEFS_FOR_CUSTOM_MT6580RF_UMTS_FDD  = MT6580RF_UMTS_FDD_RF CUSTOM_MT6580RF_UMTS_FDD
# *************************************************************************
# Include MODEM.mak
# *************************************************************************
include make/MODEM.mak

# *************************************************************************
# Common preprocessor definitions
# *************************************************************************
CUSTOM_OPTION += __MANUAL_MODE_NW_SEL__ \
                 __CP_HW_CIPHER_ENABLE__ __CP_HW_INTEGRITY_ENABLE__ \
                 __USIM_DRV__ \

CUSTOM_OPTION += __NBR_CELL_INFO__ \
                 __SATCC__ __SATC3__ __SATCE__

CUSTOM_OPTION += __R6_OOS__ 

CUSTOM_OPTION += __HSPA_PREFERENCE_SETTING__  __DYNAMIC_HSPA_PREFERENCE__

CUSTOM_OPTION += __BT_SIM_PROFILE__ __CTA_DUAL_SIM_STANDARD__ __L4C_ROOT__  

CUSTOM_OPTION += __AT_EPBW_SUPPORT__ __CPI_SUPPORT__

CUSTOM_OPTION += DEBUG_SWLA  

CUSTOM_OPTION += __GEMINI_3G_SWITCH__ 

CUSTOM_OPTION += __L1BOXSTER__

CUSTOM_OPTION += __NVRAM_IMPORTANT_PARTITIONS__

CUSTOM_OPTION += __2STAGE_NW_SELECTION__ __REPORT_AVAILABLE_PLMN__ __TDFD_SHARED_NVRAM__

CUSTOM_OPTION += __SIM_UPDATE_PIN2_CNT_BY_VERIFYING__

# ************************************************************************* 
# Component trace definition header files for custom release only 
# ************************************************************************* 
# Customer can add new trace headers here for new modules 
NEW_CUS_REL_TRACE_DEFS_MODEM =

# *************************************************************************
# Custom Release Component Configuration
# *************************************************************************
include make/rel/$(strip $(RELEASE_PACKAGE)).mak

ifeq ($(strip $(CUSTOM_RELEASE)),TRUE)
  ifneq ($(findstring REL_SUB_, $(strip $(RELEASE_PACKAGE))),)
    -include make/rel/sub_ps/$(strip $(RELEASE_PACKAGE_SUB_PS)).mak
  endif
endif


