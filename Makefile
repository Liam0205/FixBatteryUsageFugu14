TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FixBatteryUsageFugu14

FixBatteryUsageFugu14_FILES = Tweak.m
FixBatteryUsageFugu14_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
