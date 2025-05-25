//
//  HomeView.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import SwiftUI

/// 메인 화면
struct HomeView: View {
    
    @StateObject private var vm: TaskViewModel = TaskViewModel()
    
    var body: some View {
        TabView{
            TasksView(vm: vm) // 모든 할 일 View
                .tabItem {
                    Image(systemName: "list.bullet.clipboard")
                    Text("Tasks")
                }
            
            // TODO: ProfileView 추가 예정(아직 API 요청 안배움)
                ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    HomeView()
}
