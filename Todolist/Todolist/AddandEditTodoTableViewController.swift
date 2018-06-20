//
//  AddandEditTodoTableViewController.swift
//  Todolist
//
//  Created by SwiftSYY on 20/6/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import UIKit

class AddandEditTodoTableViewController: UITableViewController {
    
    var atodo: aToDo!

    @IBOutlet weak var todoTitleField: UITextField!
    @IBOutlet weak var todoDescriptionField: UITextField!
    @IBOutlet weak var deadlineDatePicker: UIDatePicker!
    @IBOutlet weak var importanceSlider: UISlider!
    @IBOutlet weak var filenameField: UITextField!
    @IBOutlet weak var cancelBarButton: UIBarButtonItem!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneBarButton.isEnabled = false
        importanceSlider.isContinuous = true
        if atodo != nil {
            todoTitleField.text = atodo.title
            todoDescriptionField.text = atodo.description
            deadlineDatePicker.date = atodo.date
            importanceSlider.value = Float(atodo.importance)
            filenameField.text = atodo.fileName
        }
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    @IBAction func userTyping(_ sender: UITextField) {
        if todoTitleField.text != "" && todoDescriptionField.text != "" {
            doneBarButton.isEnabled = true                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        if segue.identifier == "saveUnwind" {
            let title = todoTitleField.text ?? ""
            let description = todoDescriptionField.text ?? ""
            let importance = importanceSlider.value
            let filename = filenameField.text ?? ""
            atodo = aToDo(title: title, description: description, date: deadlineDatePicker.date, importance: Int(importance), done: false, fileName: filename)
            if atodo == nil {
                atodo = aToDo(title: title, description: description, date: deadlineDatePicker.date, importance: Int(importance), done: false, fileName: filename)
            } else {
                
            }
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
