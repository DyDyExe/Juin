export THEOS = theos_path
export ARCHS = arm64 arm64e
export TARGET = iphone:clang:16.5:13.0
export SYSROOT = $(THEOS)/sdks/iPhoneOS16.5.sdk

INSTALL_TARGET_PROCESSES = SpringBoard
SUBPROJECTS += Tweak Preferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
