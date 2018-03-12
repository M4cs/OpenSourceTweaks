include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = EzLoader
EzLoader_BUNDLE_EXTENSION = bundle
EzLoader_CFLAGS +=  -fobjc-arc -I$(THEOS)/include
EzLoader_ADDITIONAL_FRAMEWORKS = ControlCenterUIKit
EzLoader_FILES = $(wildcard *.m)
EzLoader_LDFLAGS += /opt/projects/EzLoader/Frameworks/ControlCenterUIKit.tbd
EzLoader_INSTALL_PATH = /Library/ControlCenter/Bundles/
EzLoader_LIBRARIES = applist

include $(THEOS_MAKE_PATH)/bundle.mk
SUBPROJECTS += ezloaderpref
include $(THEOS_MAKE_PATH)/aggregate.mk
