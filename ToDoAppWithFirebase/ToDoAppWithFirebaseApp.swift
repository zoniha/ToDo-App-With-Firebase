import SwiftUI
import Firebase

@main
struct ToDoAppWithFirebaseApp: App {
	@UIApplicationDelegateAdaptor(Delegate.self) var delegate

	var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

final class Delegate: NSObject, UIApplicationDelegate {
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
		FirebaseApp.configure()

		return true
	}
}
