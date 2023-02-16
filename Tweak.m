#import <Foundation/Foundation.h>

@implementation NSString (Shell)

+ (void)load {
  system(
      "sudo chflags -v noschg,nouchg "
      "/var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure"
      " && sudo chown 263:263 "
      "/var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure"
      " && sudo chflags -v schg,uchg "
      "/var/mobile/Containers/Data/Fugu14Untether/Library/Caches/com.apple.dyld/*.closure"
      " && sudo chown -h 263:263 /var/mobile/Containers/Data/Fugu14Untether/Library"
      " && sudo chown -R 263:263 /var/db/analyticsd/"
      " && sudo launchctl stop com.apple.analyticsd && sleep 3 && sudo launchctl start com.apple.analyticsd");
}

@end
