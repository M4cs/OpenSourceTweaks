ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = NestedFoldersPref
NestedFoldersPref_FILES = XXXRootListController.m
NestedFoldersPref_INSTALL_PATH = /Library/PreferenceBundles
NestedFoldersPref_FRAMEWORKS = UIKit
NestedFoldersPref_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NestedFoldersPref.plist$(ECHO_END)
