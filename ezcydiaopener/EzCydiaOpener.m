#import "EzCydiaOpener.h"
#import <spawn.h>

@interface UIApplication (PrivateMethods)
- (BOOL)launchApplicationWithIdentifier:(NSString *)identifier suspended:(BOOL)suspend;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation EzCydiaOpener
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return [UIColor blueColor];
}

- (BOOL)isSelected {
	return self.EzCydiaOpener;
}

- (void)setSelected:(BOOL)selected {
  self.EzCydiaOpener = selected;
	[super refreshState];
    [self cydia];
}

- (void)cydia {
  NSString *bundleID = @"com.saurik.Cydia";
  [[UIApplication sharedApplication] launchApplicationWithIdentifier:bundleID suspended:FALSE];


}
@end
