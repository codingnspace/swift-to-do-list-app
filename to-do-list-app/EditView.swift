//
//  EditView.swift
//  to-do-list-app
//
//  Created by Pearl on 9/28/19.
//  Copyright © 2019 Pearl. All rights reserved.
//

import SwiftUI

struct EditView: View {
    @EnvironmentObject var userData: UserData
    private let todo: ToDoItemModel
    private var draftTitle, draftDescription : State<String>
//    @State var draftTitle: String = ""
    

    init(todo: ToDoItemModel) {
      self.todo = todo
        self.draftTitle = .init(initialValue: todo.title)
        self.draftDescription = .init(initialValue: todo.description)
    }

    var body: some View {
//        let inset = EdgeInsets(top: -8, leading: -10, bottom: -7, trailing: -10)
        VStack {
//          TextField(
//            self.draftTitle,
//            placeholder: Text("Enter New Title..."),
//            onEditingChanged: { _ in self.updateTask() },
//            onCommit: {}
//          )
//          .background(
//            RoundedRectangle(cornerRadius: 5)
//              .fill(Color.clear)
//              .border(Color(red: 0.7, green: 0.7, blue: 0.7), width: 1 / UIScreen.main.scale, cornerRadius: 5)
//              .padding(inset)
//          )
//          .padding(EdgeInsets(
//            top: 15 - inset.top,
//            leading: 20 - inset.leading,
//            bottom: 15 - inset.bottom,
//            trailing: 20 - inset.trailing
//          ))

          Spacer()
        }
        .navigationBarTitle(Text("Edit Task 📝"))
        }
    private func updateTask() {
      guard let index = self.userData.todos.firstIndex(of: self.todo) else { return }
//      self.userData.todos[index].title = self.draftTitle.value
    }
    }


struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(todo: todoData[0])
    }
}
