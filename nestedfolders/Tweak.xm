%hook SBFolderSettings
@interface SpringBoard : UIApplication
- (void)_relaunchSpringBoardNow;
@end


NSMutableDictionary *settings = [NSMutableDictionary dictionaryWithContentsOfFile:
  [NSString stringWithFormat:@"%@/Library/Preferences/%@", NSHomeDirectory(), @"com.CDC.nestedfolderspref.plist"]];
NSNumber* nest = [settings objectForKey:@"nest"];

-(BOOL)allowNestedFolders{
  if ([nest boolValue] == YES){
    return TRUE;
    return %orig;
    [(SpringBoard *)[UIApplication sharedApplication] _relaunchSpringBoardNow];
  }
  else{
    return FALSE;
    return %orig;
    [(SpringBoard *)[UIApplication sharedApplication] _relaunchSpringBoardNow];
  }

}
%end
/*
if ([nest boolValue] == YES){
  -(BOOL)allowNestedFolders{
    return TRUE;
    return %orig;
}
else if ([nest boolValue] == NO){
  -(BOOL)allowNestedFolders{
    return FALSE;
    return %orig;
  }
}

%end
*/
