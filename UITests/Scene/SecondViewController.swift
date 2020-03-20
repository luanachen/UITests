import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.accessibilityIdentifier = "titleLabel"
    }
}
