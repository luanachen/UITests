import UIKit

class SceneCoordinator {
    
    var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        let viewController = createFirstViewController()
        navigation.pushViewController(viewController, animated: false)
    }
    
    private func createFirstViewController() -> FirstViewController {
        let viewController = UIStoryboard(name: "FirstView", bundle: Bundle.main)
            .instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        viewController.delegate = self
        return viewController
    }
    
    
    private func createSecondViewController() -> SecondViewController {
        let viewController = UIStoryboard(name: "SecondView", bundle: Bundle.main)
            .instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        return viewController
    }
}

extension SceneCoordinator: FirstViewControllerDelegate {
    func showSecondView() {
        let viewController = createSecondViewController()
        navigation.pushViewController(viewController, animated: true)
    }
}
