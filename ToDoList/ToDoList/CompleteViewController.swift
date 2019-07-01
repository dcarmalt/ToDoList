//
//  CompleteViewController.swift
//  ToDoList
//
//  Created by Dianna Carmalt on 6/28/19.
//  Copyright © 2019 Dianna Carmalt. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var toDo : ToDo? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let toDo = toDo {
            if toDo.important {
                if let name = toDo.name {
                    nameLabel.text = " ❗️ " + name
                }
            } else {
                nameLabel.text = toDo.name
            }
        }
    }
    
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let toDo = toDo {
                context.delete(toDo)
                (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            }
        }
        navigationController?.popViewController(animated: true)
    }
}
