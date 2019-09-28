//
//  TodoDetailView.swift
//  to-do-list-app
//
//  Created by Pearl on 9/21/19.
//  Copyright © 2019 Pearl. All rights reserved.
//

import SwiftUI

struct TodoDetailView: View {
    @EnvironmentObject var userData: UserData
    var todoItem: ToDoItemModel
    
    var todoIndex: Int {
        userData.todos.firstIndex(where: { $0.id == todoItem.id })!
    }
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(todoItem.title).bold()
                Spacer()
//                Button(action: {
//                     self.userData.todos[self.todoIndex].isComplete.toggle()
//                 }) {
//                     if self.userData.todos[self.todoIndex].isComplete {
//                         Text("Completed")
//                     } else {
//                         Text("Not Completed")
//                     }
//                 }
            }
            HStack {
                Text(todoItem.description)
                Spacer()
            }
            
//                      if todoItem.isComplete {
//                            Text("Completed")
//                        }
            
            HStack {
                if self.userData.todos[self.todoIndex].isHighPriority {
                    Text("Woah! This is a high priority! Make sure you get to it").bold()
                } else {
                    Text("Not a high priority! Do other tasks first").bold()
                }
            }
            Spacer()
        }.padding()
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todoItem: todoData[0])
    }
}
