LOCAL_PATH := $(call my-dir) 
include $(CLEAR_VARS) 
 
LOCAL_MODULE    := libiconv 
 
LOCAL_CFLAGS    := \
    -Wno-multichar \
    -D_ANDROID \
    -DLIBDIR="c" \
    -DBUILDING_LIBICONV \
    -DIN_LIBRARY \
    -I$(LOCAL_PATH)/ \
    -I$(LOCAL_PATH)/include \
    -I$(LOCAL_PATH)/srclib

LOCAL_SRC_FILES := \
	lib/iconv.c \
	libcharset/lib/localcharset.c \
	libcharset/lib/relocatable.c

LOCAL_LDLIBS    := -llog

include $(BUILD_STATIC_LIBRARY) 
 
