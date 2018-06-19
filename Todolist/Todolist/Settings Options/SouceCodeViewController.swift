//
//  SouceCodeViewController.swift
//  Todolist
//
//  Created by Rui Yang Tan on 19/6/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import UIKit
import SafariServices

class SouceCodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Source Code"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func urlButton(_ sender: Any) {
        if let url = URL(string: "http://bit.ly/2MGNTVY"){
            let svc = SFSafariViewController(url: url);
            present(svc, animated: true, completion: nil);
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
