//
//  TasksView.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import SwiftUI

struct TasksView: View {
    
    @ObservedObject var vm: ReploViewModel
    
    var body: some View {
        Text("Tasks View")
    }
}

#Preview {
    TasksView(vm: ReploViewModel())
}
