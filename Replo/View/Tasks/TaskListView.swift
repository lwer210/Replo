//
//  TaskListView.swift
//  Replo
//
//  Created by 이상훈 on 5/24/25.
//

import SwiftUI

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
                Button {
                    // TODO: task.isComplete State 변수가 아니기 때문에 toggle() 불가능. 해결 필요
                } label: {
                    Image(systemName: task.isComplete ? "checkmark.square.fill" : "checkmark.square")
                }
                
                Text(task.todo)
                    .font(.title2)
            }
        }
    }
}

#Preview {
    TaskListView(vm: TaskViewModel(), task: Task(isComplete: false, todo: "할 일"))
}
