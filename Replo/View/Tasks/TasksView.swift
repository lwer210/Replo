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
                
            }
            .navigationTitle("My Tasks")
            .padding()
        }
    }
}

#Preview {
    TasksView(vm: TaskViewModel())
}
