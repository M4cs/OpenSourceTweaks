#import "EzLoader.h"
#import <AppList/AppList.h>
#import "spawn.h"


@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation EzLoader
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return [UIColor blueColor];
}

- (BOOL)isSelected {
	return self.EzLoader;
}

- (void)setSelected:(BOOL)selected {
  self.EzLoader = selected;
	[super refreshState];
    [self launchapp];
}



- (void)launchapp {
	// This doesnt work since
	NSString* bundleIdentifier = "Bundle will go here";//the selected apps budnle will go here when applist is added

	[[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleIdentifier suspended:FALSE];


}
@end
