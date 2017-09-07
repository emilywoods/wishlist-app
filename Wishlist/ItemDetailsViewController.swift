import UIKit

class ItemDetailsViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    var item: Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let anItem = item else { return }
        titleLabel.text = anItem.title
        priceLabel.text = "\(anItem.price)"
    }
}
