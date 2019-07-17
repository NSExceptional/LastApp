TWEAK_NAME = LastApp
APP_ID = jp.ashikase.lastapp

LastApp_OBJCC_FILES = Tweak.xm
LastApp_CFLAGS = -I$(THEOS_PROJECT_DIR)/Libraries/Common -F$(SYSROOT)/System/Library/CoreServices -DAPP_ID=\"$(APP_ID)\"
LastApp_LDFLAGS = -lactivator
LastApp_FRAMEWORKS = UIKit CoreGraphics

TARGET := iphone:latest:9.0
ARCHS := armv7 arm64 arm64e

# NOTE: The following is needed until logos is updated to not generate
#       unnecessary 'ungrouped' objects.
GO_EASY_ON_ME := 1

include $(THEOS)/makefiles/common.mk
include $(THEOS)/makefiles/tweak.mk
