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
    
    var todo = ToDo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       nameLabel.text = todo.name
    }
    
  
    @IBAction func completeTapped(_ sender: Any) {
        
    }
    

}
