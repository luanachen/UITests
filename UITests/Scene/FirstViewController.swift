import UIKit

protocol FirstViewControllerDelegate: class {
    func showSecondView()
}

class FirstViewController: UIViewController {
    
    weak var delegate: FirstViewControllerDelegate?
    
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.accessibilityLabel = "continueButton"
    }
    
    @IBAction func didTapContinueButton(_ sender: Any) {
        delegate?.showSecondView()
    }
    
}
