//
//  ToDoListView.swift
//  Organia
//
//  Created by Florian Doppler on 17.04.21.
//

import SwiftUI
import Combine

struct ToDoListView: View {
    @ObservedObject var taskStore = TaskStore()
    @State var newToDo : String = ""
    
    var searchBar : some View {
        HStack {
            TextField("Type in a new task...", text: self.$newToDo)
            Button(action: self.addNewToDo, label: {
                Image(systemName: "plus")
            })
        }
    }
    
    func addNewToDo() {
            taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
            self.newToDo = ""
    }
    
    var body: some View {
            VStack {
                searchBar.padding()
                List {
                    ForEach(self.taskStore.tasks) { task in
                        Text(task.toDoItem)
                    }.onMove(perform: self.move)
                        .onDelete(perform: self.delete)
                }
                .navigationBarTitle("Tasks")
                .navigationBarItems(trailing: EditButton())
            }
        }
    
    func move(from source : IndexSet, to destination : Int) {
        taskStore.tasks.move(fromOffsets: source, toOffset: destination)
    }
            
    func delete(at offsets : IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
