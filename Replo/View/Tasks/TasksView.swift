//
//  TasksView.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import SwiftUI

/// Task View 화면
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
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color(.systemGray4))
                        )
                        
                    
                    Button {
                        vm.addTask(text: vm.taskSearchText)
                        vm.taskSearchText = ""
                    } label: {
                        Image(systemName: "arrowshape.up.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.white)
                            .padding(.horizontal)
                            .padding(.vertical)
                            .background(.blue)
                            .cornerRadius(100)
                    }
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
