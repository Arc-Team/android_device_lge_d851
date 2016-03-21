
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE        := com.qualcomm.location
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := lge
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := app/com.qualcomm.location.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE        := com.qualcomm.services.location
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := lge
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := app/com.qualcomm.services.location.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE        := TimeService
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := lge
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := app/TimeService.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE        := qcrilmsgtunnel
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := lge
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := app/qcrilmsgtunnel.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE        := shutdownlistener
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := lge
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := app/shutdownlistener.apk
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE   := PRESIGNED
LOCAL_MODULE        := qcnvitems
LOCAL_MODULE_CLASS  := JAVA_LIBRARIES
LOCAL_MODULE_OWNER  := lge
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := framework/qcnvitems.jar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE   := PRESIGNED
LOCAL_MODULE        := qcrilhook
LOCAL_MODULE_CLASS  := JAVA_LIBRARIES
LOCAL_MODULE_OWNER  := lge
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := framework/qcrilhook.jar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := libHevcSwDecoder
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
LOCAL_MODULE_OWNER  := lge
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := vendor/lib/libHevcSwDecoder.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := libtime_genoff
LOCAL_MODULE_CLASS  := SHARED_LIBRARIES
LOCAL_MODULE_OWNER  := lge
LOCAL_MODULE_PATH   := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS   := optional
LOCAL_SRC_FILES     := vendor/lib/libtime_genoff.so
include $(BUILD_PREBUILT)