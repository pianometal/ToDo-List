import UIKit

class CreateToDoViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let newToDo = ToDoItem(context: context)
            
            if let name = nameTextField.text {
                
                newToDo.name = name
                newToDo.important = importantSwitch.isOn
                
                (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
                
                navigationController?.popViewController(animated: true)
            
            }
            
        }
        
    }
    
}
