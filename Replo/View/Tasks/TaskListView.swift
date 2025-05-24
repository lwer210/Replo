//
//  TaskListView.swift
//  Replo
//
//  Created by 이상훈 on 5/24/25.
//

import SwiftUI


/// Task 요소 컴포넌트
struct TaskListView: View {
    
    @ObservedObject var vm: TaskViewModel
    var task: Task
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(width: 350, height: 80)
                .shadow(color: .black.opacity(0.2), radius: 5, x:0, y:4)
            
            HStack{
                HStack (spacing: 20){
                    Button {
                        vm.toggleIsCompleted(task: task)
                    } label: {
                        Image(systemName: vm.checkIsCompleted(task: task) ? "checkmark.square.fill" : "checkmark.square")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20)
                    }
                    
                    
                    Button {
                        vm.removeTask(task: task)
                    } label: {
                        Image(systemName: "trash")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20)
                            .foregroundStyle(Color.red)
                    }
                }
                .padding()
                
                Spacer()
                
                VStack(alignment: .trailing){
                    Text(task.todo)
                        .font(.title3)
                        .bold()
                        .strikethrough(vm.checkIsCompleted(task: task))
                        .foregroundStyle(vm.checkIsCompleted(task: task) ? .gray : .black)
                    
                    Text(DateFormatterManage.fullDateFormatter.string(from: task.createdAt))
                        .font(.subheadline)
                    
                }
                .padding()
            }
            .frame(width: 350, height: 80)
        }
    }
}

#Preview {
    TaskListView(vm: TaskViewModel(), task: Task(isComplete: false, todo: "description"))
}
