import Foundation
import Quick
import Nimble
import Nimble_Snapshots
import KIF

@testable import UITests

class DefaultFlowTest: QuickSpec {
    override func spec() {
        
        describe("#default flow behavior") {
            var coordinator: SceneCoordinator!
            var navigationViewController: UINavigationController!
            var window: UIWindow!
            
            beforeEach {
                window = UIApplication.shared.keyWindow
                window.frame = CGRect(x:0, y:0, width: 320, height: 564)
                window.makeKeyAndVisible()
                
                navigationViewController = UINavigationController()
                window.rootViewController = navigationViewController
                coordinator = SceneCoordinator(navigation: navigationViewController)
            }
            
            context("didTapContinueButton") {
                it("it should show secondView") {
                    coordinator.start()
                    
                    expect(navigationViewController.topViewController).toEventually(beAKindOf(FirstViewController.self))
                    expect(navigationViewController.topViewController).toEventually(haveValidSnapshot(named: "pre tap continueButton"))
                    
                    self.tester().tapView(withAccessibilityLabel: "continueButton")
                    self.tester().waitForAnimationsToFinish()
                    
                    print("number controllers: \(navigationViewController.viewControllers.count)")
                    
                    expect(navigationViewController.topViewController).toEventually(beAKindOf(SecondViewController.self))
                    expect(navigationViewController.topViewController).toEventually(haveValidSnapshot(named: "after tap continueButton"))
                }
            }
        }
    }
}
