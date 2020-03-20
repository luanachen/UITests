import UIKit

class Coordinator {
    
    var window: UIWindow
    
    var navigation = UINavigationController()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        window.rootViewController = navigation
        let sceneCoordinator = SceneCoordinator(navigation: navigation)
        sceneCoordinator.start()
    }
}
