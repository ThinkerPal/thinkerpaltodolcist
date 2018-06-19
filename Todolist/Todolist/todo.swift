//
//  todo.swift
//  Todolist
//
//  Created by Rui Yang Tan on 19/6/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import Foundation

class aToDo {
    var title: String
    var description: String
    var date: String
    var importance: Int
    var done: Bool
    var fileName: String
    init (title: String, description: String, date: String, importance: Int, done: Bool, fileName: String){
        self.title = title;
        self.description = description;
        self.date = date;
        self.importance = importance;
        self.done = done;
        self.fileName = fileName;
        
    }
    
}
