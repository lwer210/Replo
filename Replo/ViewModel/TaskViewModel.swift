//
//  ReploViewModel.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import Foundation
import SwiftUI

// Task ViewModel 선언
class TaskViewModel: ObservableObject{
    
    /// Task 배열 필드
    @Published var tasks: [Task] = []
    
    /// Task 검색어 필드
    @Published var taskSearchText = ""
    
    /// Tasks 배열에 요소 추가
    /// - Parameters text: Task에 추가할 텍스트 요소값
    func addTask(text: String){
        if !text.isEmpty{ // text가 빈값이 아닐 때만 추가
            let task = Task(isComplete: false, todo: text)
            tasks.append(task)
        }
    }
}
