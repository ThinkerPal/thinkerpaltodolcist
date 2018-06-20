//
//  todo.swift
//  Todolist
//
//  Created by Rui Yang Tan on 19/6/18.
//  Copyright © 2018 Rui Yang Tan. All rights reserved.
//

import Foundation

class aToDo: Codable {
    var title: String
    var description: String
    var date: Date
    var importance: Int
    var done: Bool
    var fileName: String
    init (title: String, description: String, date: Date, importance: Int, done: Bool, fileName: String){
        self.title = title;
        self.description = description;
        self.date = date;
        self.importance = importance;
        self.done = done;
        self.fileName = fileName;
    }
    
    static func loadSampleData() -> [aToDo] {
        print("Loading Sample")
        return [
            aToDo(title: "Do Math Homework", description: "Finish Worksheet 1", date: Date(timeIntervalSince1970: 1513728000), importance: 3, done: false, fileName: "")
        ]
    }
    
}
