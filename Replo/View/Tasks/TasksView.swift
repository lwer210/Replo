//
//  TasksView.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import SwiftUI

struct TasksView: View {
    
    @ObservedObject var vm: TaskViewModel
    
    var body: some View {
        NavigationView {
            VStack{
                
                ForEach(vm.tasks, id: \.self){item in
                    TaskListView(vm: vm, task: item)
                }
                
                Spacer()
                
                HStack{
                    TextField("입력", text: $vm.taskSearchText)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    
                    Button {
                        vm.addTask(text: vm.taskSearchText)
                        vm.taskSearchText = ""
                    } label: {
                        Image(systemName: "arrow.up")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .navigationTitle("My Tasks")
            .padding()
        }
    }
}

#Preview {
    TasksView(vm: TaskViewModel())
}
