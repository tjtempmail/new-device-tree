LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),X659B)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
