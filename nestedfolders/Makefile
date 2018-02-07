ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NestedFolders
NestedFolders_FILES = Tweak.xm
NestedFolders_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += nestedfolderspref
include $(THEOS_MAKE_PATH)/aggregate.mk
