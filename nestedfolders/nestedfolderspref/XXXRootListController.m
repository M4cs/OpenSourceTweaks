#include "XXXRootListController.h"

@interface SpringBoard : UIApplication
- (void)_relaunchSpringBoardNow;
@end

@implementation XXXRootListController
- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}
-(void)credits {
UIAlertView *alert1 = [[UIAlertView alloc]initWithTitle:@"Credits" message:@"Made by Clarke1234, Tested by no one yet" delegate:self cancelButtonTitle:@"K cool" otherButtonTitles:nil];
[alert1 show];
}

- (void)twitter {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/ClarkeCDC"]];
}

-(void)respring {

	[(SpringBoard *)[UIApplication sharedApplication] _relaunchSpringBoardNow];

      }
@end
