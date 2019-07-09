import UIKit
import Flutter

func registerPlugins(registry: FlutterPluginRegistry) {
    GeneratedPluginRegistrant.register(with: registry)
}

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    private var engine: FlutterEngine!
    
    private var channel: FlutterMethodChannel? = nil

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    let flutterView = window?.rootViewController as! FlutterViewController

    engine = FlutterEngine(name: "AnIsolate", project: nil, allowHeadlessExecution: true)
    channel = FlutterMethodChannel(name: "com.app/app", binaryMessenger: flutterView)
    channel?.setMethodCallHandler({ (call, result) in
        switch call.method {
        case "engine.start":
            if let m = call.arguments as? [String:Any], let key = m["dispatcher.key"] as? Int {
                guard let info = FlutterCallbackCache.lookupCallbackInformation(Int64(key)) else {
                    fatalError("Can not fnd callback")
                }
                
                let entryPoint = info.callbackName
                let uri = info.callbackLibraryPath
                
                self.engine.run(withEntrypoint: entryPoint, libraryURI: uri)
                registerPlugins(registry: self.engine)
            }
            break
        default:
            result(FlutterMethodNotImplemented)
        }
    });

    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
