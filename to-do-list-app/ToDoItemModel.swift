//
//  ToDoItemModel.swift
//  to-do-list-app
//
//  Created by Pearl on 9/21/19.
//  Copyright © 2019 Pearl. All rights reserved.
//

import SwiftUI

struct ToDoItemModel: Hashable, Codable, Identifiable {
    var id: Int
    var title, description, dueDate: String
    var isHighPriority, isComplete: Bool
    
    init(id: Int, title: String, description: String, dueDate: String, isHighPriority: Bool, isComplete: Bool) {
        self.id = id
        self.title = title
        self.description = description
        self.dueDate = dueDate
        self.isHighPriority = false
        self.isComplete = false
    }
}

