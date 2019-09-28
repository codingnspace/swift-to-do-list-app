//
//  ContentView.swift
//  to-do-list-app
//
//  Created by Pearl on 9/21/19.
//  Copyright © 2019 Pearl. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var todoItem: ToDoItemModel
    var body: some View {
        VStack {
            AddTodoFormView()
            TodoList(todoItem: todoItem)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(todoItem: todoData[1])
    }
}
