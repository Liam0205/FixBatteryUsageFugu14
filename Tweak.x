#import <SpringBoard/SpringBoard.h>

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
  %orig;

  system("chflags -v noschg,nouchg /var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure");
  system("chown 263:263 /var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure");
  system("chflags -v schg,uchg /var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure");
  system("chown -h 263:263 /var/mobile/Containers/Data/Fugu14Untether/Library");
  system("chown -R 263:263 /var/db/analyticsd/");
  system("launchctl stop com.apple.analyticsd");
}

%end
