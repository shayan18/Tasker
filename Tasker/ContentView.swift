//
//  ContentView.swift
//  Tasker
//
//  Created by Shayan Ali on 14/01/2020.
//  Copyright © 2020 Shayan Ali. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskStore: TaskStore
    @State var modalIsPresented = false
    var body: some View {
        
        
        NavigationView {
            List {
                ForEach(taskStore.tasks) { task in
                    Text(task.name)
                }
                .onDelete { indexSet in
                    self.taskStore.tasks.remove(atOffsets: indexSet)
                    
                }
                .onMove { sourceIndices, destinationIndex in
                    self.taskStore.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
                }
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                Button(action: {
                
                self.modalIsPresented = true
            }) {
                Image(systemName: "plus")
            })
        }.sheet(isPresented: $modalIsPresented) {
            
            NewTaskView(taskStore: self.taskStore)
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
