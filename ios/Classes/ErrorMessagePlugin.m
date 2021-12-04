#import "ErrorMessagePlugin.h"
#if __has_include(<error_message/error_message-Swift.h>)
#import <error_message/error_message-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "error_message-Swift.h"
#endif

@implementation ErrorMessagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftErrorMessagePlugin registerWithRegistrar:registrar];
}
@end
