//
//  TodoList.swift
//  to-do-list-app
//
//  Created by Pearl on 9/21/19.
//  Copyright © 2019 Pearl. All rights reserved.
//

import SwiftUI

struct TodoList: View {
    @EnvironmentObject var userData: UserData
    
    
    var todoItem: ToDoItemModel
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showHpOnly) {
                      Text("Show HIGH PRIORITY Todos only")
                  }
                Section(header: Text("To Do List")) {
                    ForEach (userData.todos) { todo in
                        if !self.userData.showHpOnly || todo.isHighPriority {
                        NavigationLink(destination: TodoDetailView(todoItem: todo)) {
                            Text(todo.title)
                            }
                            
                        }
                    }
                }
        
            }.navigationBarTitle(Text("Tasks 👀"))
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList(todoItem: todoData[1])
    }
}
