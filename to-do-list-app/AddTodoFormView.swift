//
//  AddTodoFormView.swift
//  to-do-list-app
//
//  Created by Pearl on 9/22/19.
//  Copyright © 2019 Pearl. All rights reserved.
//

import SwiftUI

struct AddTodoFormView: View {
    @State var todoTitle = ""
    @State var todoDescription = ""
    @State var dueDate = Date()
    @State var isHighPriority = false
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $todoTitle)
                TextField("Description", text: $todoDescription)
                Toggle(isOn: $isHighPriority) {
                    Text("Is High Priority")
                }
                DatePicker(selection: $dueDate) {
                    Text("Due Date")
                }
                Button(action: { self.createTodo() }) {
                    Text("Add Todo")
                }

            }
        .navigationBarTitle(Text("Add A Todo"))
        }
    }
    
    private func createTodo() {
       let newTask = ToDoItemModel(
            id: 9, title: self.todoTitle, description: self.todoDescription, dueDate: "vadf", isHighPriority: self.isHighPriority, isComplete: false
        )
        self.userData.todos.insert(newTask, at: 0)
        self.todoTitle = ""
        self.todoDescription = ""
        self.isHighPriority = false
        self.dueDate = Date()
    }
}

struct AddTodoFormView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoFormView()
    }
}
