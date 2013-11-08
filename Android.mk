ifneq ($(strip $(USE_INTEL_LVSE)),true)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)
ifdef DOLBY_DAP
LOCAL_SRC_FILES := $(filter-out src/com/android/musicfx/Compatibility.java, $(LOCAL_SRC_FILES))
LOCAL_SRC_FILES += $(call all-java-files-under, src_dolby)
endif # LINE_ADDED_BY_DOLBY

LOCAL_JAVA_LIBRARIES := framework

LOCAL_PACKAGE_NAME := MusicFX

include $(BUILD_PACKAGE)

endif
