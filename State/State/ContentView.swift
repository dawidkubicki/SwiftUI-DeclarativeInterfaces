//
//  ContentView.swift
//  State
//
//  Created by Dawid Kubicki on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Variables
    
    @State var tasks = [Task]()
    
    private func addTask() {
        self.tasks.append(Task(name: "Wash the car"))
    }
    
    var body: some View {
        List {
            
            Button(action: addTask) {
                Text("Add Task")
            }
            
            ForEach(tasks) { task in
                Text(task.name)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
