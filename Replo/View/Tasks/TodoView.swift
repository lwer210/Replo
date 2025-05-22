//
//  TodoView.swift
//  Replo
//
//  Created by 이상훈 on 5/20/25.
//

import SwiftUI

struct TodoView: View {
    
    @Binding var task: TaskModel
    @ObservedObject var vm: ReploViewModel
    
    var body: some View {
        HStack{
            Button {
                task.isCompleted.toggle()
            } label: {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "checkmark.circle")
            }
            
            VStack{
                Text("\(task.tasks)")
            }
        }
    }
}

#Preview {
    TodoView(task: .constant(TaskModel(tasks: "밥 먹기", category: .health)), vm: ReploViewModel())
}
