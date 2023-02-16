#import <Foundation/Foundation.h>

@implementation NSString (FixBatteryUsageFugu14)

+ (void)load {
  system(
      "/var/mobile/opt/bin/chflags.page.liam -v noschg,nouchg "
      "/var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure"
      " && /var/mobile/opt/bin/chown.page.liam 263:263 "
      "/var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure"
      " && /var/mobile/opt/bin/chflags.page.liam -v schg,uchg "
      "/var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure"
      " && /var/mobile/opt/bin/chown.page.liam -h 263:263 /var/mobile/Containers/Data/Fugu14Untether/Library"
      " && /var/mobile/opt/bin/chown.page.liam -R 263:263 /var/db/analyticsd/"
      " && /var/mobile/opt/bin/launchctl.page.liam stop com.apple.analyticsd"
      " && sleep 3"
      " && /var/mobile/opt/bin/launchctl.page.liam start com.apple.analyticsd");
}

@end
