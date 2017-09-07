import UIKit

class ItemsTableViewController: UITableViewController, AddItemViewControllerDelegate   {
    
    var items = [Item(title: "Coffee", price: 10),
                 Item(title: "Booster board", price: 1000)]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        let currentItem = items[indexPath.row]
        
        cell.textLabel?.text = currentItem.title
        cell.detailTextLabel?.text = "\(currentItem.price)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let itemDetailsViewController = segue.destination as?
            ItemDetailsViewController {
            guard let cell = sender as? UITableViewCell else {
                return
            }
            
            guard let indexPath = tableView.indexPath(for: cell) else {
                return
            }
            
        }
        
        if let addItemsViewController = segue.destination as? AddItemViewController {
            addItemsViewController.delegate = self
        }
        
       }
    
    func  newItemAdded(item: Item) {
        items.append(item)
        tableView.reloadData()
    }

}

