#import "QuickTransitionPlugin.h"
#if __has_include(<quick_transition/quick_transition-Swift.h>)
#import <quick_transition/quick_transition-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "quick_transition-Swift.h"
#endif

@implementation QuickTransitionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftQuickTransitionPlugin registerWithRegistrar:registrar];
}
@end
