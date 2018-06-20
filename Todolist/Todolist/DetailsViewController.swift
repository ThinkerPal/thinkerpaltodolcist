//
//  ViewController.swift
//  Todolist
//
//  Created by Rui Yang Tan on 19/6/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var ATODO: aToDo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editTodo" {
            let nav = segue.destination as! UINavigationController
            let dest = nav.viewControllers[1] as! AddandEditTodoTableViewController
            dest.atodo = ATODO
        }
    }


}

