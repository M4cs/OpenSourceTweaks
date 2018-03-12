include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = EzLoaderPref
EzLoaderPref_FILES = EzLRootListController.m
EzLoaderPref_INSTALL_PATH = /Library/PreferenceBundles
EzLoaderPref_FRAMEWORKS = UIKit
EzLoaderPref_PRIVATE_FRAMEWORKS = Preferences
EzLoaderPref_LIBRARIES = applist

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/EzLoaderPref.plist$(ECHO_END)
