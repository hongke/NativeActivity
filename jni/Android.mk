LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := NativeActivity
LOCAL_SRC_FILES := NativeActivity.cpp Android.cpp Asset.cpp AssetManager.cpp GoogleGames.cpp GooglePlayServices.cpp GooglePlus.cpp Paths.cpp Notification.cpp AppState.cpp AppStateImpl.cpp ClassLoader.cpp NotificationManager.cpp
LOCAL_CFLAGS    := -Wall -fexceptions -frtti
LOCAL_CPPFLAGS  := -DNULL=0  -D_LIB=1

include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE    := NativeActivityRuntimeUnstripped
LOCAL_SRC_FILES := AndroidMain.cpp
LOCAL_CFLAGS    := -Wall -fexceptions
LOCAL_CPPFLAGS  := -DNULL=0 -D_LIB=1
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2

LOCAL_WHOLE_STATIC_LIBRARIES := NativeActivity

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := NativeActivityRuntime
LOCAL_SRC_FILES := AndroidMain.cpp
LOCAL_CFLAGS    := -Wall -fexceptions
LOCAL_CPPFLAGS  := -DNULL=0 -D_LIB=1
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2

include $(BUILD_SHARED_LIBRARY)