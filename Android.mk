#
# This file was modified by Dolby Laboratories, Inc. The portions of the
# code that are surrounded by "DOLBY..." are copyrighted and
# licensed separately, as follows:
#
# (C) 2012-2013 Dolby Laboratories, Inc.
# All rights reserved.
#
# This program is protected under international and U.S. Copyright laws as
# an unpublished work. This program is confidential and proprietary to the
# copyright owners. Reproduction or disclosure, in whole or in part, or the
# production of derivative works therefrom without the express permission of
# the copyright owners is prohibited.
#
ifneq ($(strip $(USE_INTEL_LVSE)),true)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)
ifdef DOLBY_DAP
LOCAL_SRC_FILES := $(filter-out src/com/android/musicfx/CompatibilityHelper.java, $(LOCAL_SRC_FILES))
LOCAL_SRC_FILES += $(call all-java-files-under, ../../../vendor/intel/PRIVATE/dolby_ds1/apps/MusicFX/src_dolby)
endif # LINE_ADDED_BY_DOLBY

LOCAL_JAVA_LIBRARIES := framework

LOCAL_PACKAGE_NAME := MusicFX

LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PACKAGE)

endif
