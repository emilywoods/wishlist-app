import UIKit

protocol AddItemViewControllerDelegate: class {
    func newItemAdded(item: Item)
}

class AddItemViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!

    weak var delegate: AddItemViewControllerDelegate?
    
    @IBAction func addTapped(_ sender: Any) {
        guard let titleText = titleTextField.text else {
            return
        }
        
        guard let priceText = priceTextField.text else {
            return
        }
        
        guard let price = Double(priceText) else {
            return
        }
        
        let item = Item(title: titleText, price: price)
        delegate?.newItemAdded(item: item)
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
