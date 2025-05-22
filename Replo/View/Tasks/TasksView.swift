//
//  TasksView.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import SwiftUI

struct TasksView: View {
    
    @ObservedObject var vm: ReploViewModel
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("My Taskts")
            .searchable(text: $searchText, prompt: "Search tasks...") // 검색바 생성 -> iOS 15부터 사용 가능
            .padding()
        }
    }
}

#Preview {
    TasksView(vm: ReploViewModel())
}
