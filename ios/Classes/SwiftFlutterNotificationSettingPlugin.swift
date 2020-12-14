import Flutter
import UIKit

public class SwiftFlutterNotificationSettingPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_notification_setting", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterNotificationSettingPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

    enum Method:String {
        case openNotificationSettingPage
    }
    
  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case Method.openNotificationSettingPage.rawValue:
        openNotificationSettingPage(result)
    default:
        result(FlutterMethodNotImplemented)
    }
  }
    
    public func openNotificationSettingPage(_ result: @escaping FlutterResult) {
        guard let url = URL.init(string: UIApplication.openSettingsURLString) else {
            return result(false)
        }
        
        if(UIApplication.shared.canOpenURL(url)) {
            UIApplication.shared.open(url, options: [UIApplication.OpenExternalURLOptionsKey.init(rawValue: "") : [:]], completionHandler: { (open) in
                result(open)
            })
        } else {
            result(false)
        }
    }
}
