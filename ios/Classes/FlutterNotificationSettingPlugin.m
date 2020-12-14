#import "FlutterNotificationSettingPlugin.h"
#if __has_include(<flutter_notification_setting/flutter_notification_setting-Swift.h>)
#import <flutter_notification_setting/flutter_notification_setting-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_notification_setting-Swift.h"
#endif

@implementation FlutterNotificationSettingPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterNotificationSettingPlugin registerWithRegistrar:registrar];
}
@end
