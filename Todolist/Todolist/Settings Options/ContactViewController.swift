//
//  ContactViewController.swift
//  Todolist
//
//  Created by Rui Yang Tan on 19/6/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Contact Us"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func emailButtonPressed(_ sender: Any) {
        let email = "thinkerpal@gmail.com"
        if let url = URL(string: "mailto:\(email)") {
            UIApplication.shared.open(url)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
