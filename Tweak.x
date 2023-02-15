#import <SpringBoard/SpringBoard.h>

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
  %orig;

  system("sudo chflags -v noschg,nouchg /var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure");
  system("sudo chown 263:263 /var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure");
  system("sudo chflags -v schg,uchg /var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure");
  system("sudo chown -h 263:263 /var/mobile/Containers/Data/Fugu14Untether/Library");
  system("sudo chown -R 263:263 /var/db/analyticsd/");
  system("sudo launchctl stop com.apple.analyticsd");
}

%end
