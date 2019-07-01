//
//  CreateToDoViewController.swift
//  ToDoList
//
//  Created by Dianna Carmalt on 6/28/19.
//  Copyright © 2019 Dianna Carmalt. All rights reserved.
//

import UIKit

class CreateToDoViewController: UIViewController {

    @IBOutlet weak var NameText: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    var toDoTableVC : ToDoTableViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let newToDo = ToDo()
        newToDo.important = importantSwitch.isOn
        if let name = NameText.text {
            newToDo.name = name
        }
        toDoTableVC?.toDos.append(newToDo)
        toDoTableVC?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
}
