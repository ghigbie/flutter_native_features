import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    let batteryChannel = FlutterMethodChannel(name: "devslopes.native_features/battery", binaryMessenger: controller)
    
    batteryChannel.setMethodCallHandler({(call: FlutterMethodCall, result: FlutterResult) -> Void in
        guard call.method == "getBatteryLevel" else {
            result(FlutterMethodNotImplemented)
            return
        }
        
        self.receiveBatteryLevel(result: result)
    })
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

    private func receiveBatteryLevel(result: FlutterResult){
       // result(54); --- use this for tesing
        let device = UIDevice.current
        device.isBatteryMonitoringEnabled = true
        if device.batteryState == UIDeviceBatteryState.unknown{
            result(FlutterError(code: "UNAVAILABLE", message: "Battery info unavailable", details: nil))
        }else{
            result(Int(device.batteryLevel * 100))
        }
    
    }

}
