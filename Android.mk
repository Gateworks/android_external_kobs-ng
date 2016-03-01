LOCAL_PATH := $(call my-dir)

PRIVATE_LOCAL_CFLAGS := -DHAVE_CONFIG_H -DNO_CRYPTO -O2 -g -W -Wall

include $(CLEAR_VARS)

LOCAL_CFLAGS := $(PRIVATE_LOCAL_CFLAGS)

LOCAL_SRC_FILES := \
	src/main.c  \
	src/mtd.c  \
	src/rom_nand_hamming_code_ecc.c \
	src/ncb.c \
	src/sha1.c \
	src/plat_boot_config.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/ $(LOCAL_PATH)/src

LOCAL_STATIC_LIBRARIES := libc

LOCAL_MODULE := kobs-ng
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
