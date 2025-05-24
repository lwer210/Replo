//
//  ReploViewModel.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import Foundation
import SwiftUI


/// 할 일 View Model 클래스
class TaskViewModel: ObservableObject{
    
    /// Task 배열 필드
    @Published var tasks: [Task] = []
    
    /// Task 검색어 필드
    @Published var taskSearchText = ""
    
    /// Tasks 배열에 요소 추가
    ///
    /// - Parameter text: Task에 추가할 텍스트 요소값
    func addTask(text: String){
        if !text.isEmpty{ // text가 빈값이 아닐 때만 추가
            let task = Task(isComplete: false, todo: text)
            tasks.append(task)
        }
    }
    
    /// Task 완료 / 취소 처리 메서드
    ///
    /// - Parameter task: 완료 / 취소 처리할 Task
    func toggleIsCompleted(task: Task){
        let index = tasks.firstIndex(where: {
            $0.id == task.id
        })
        
        if let index{
            tasks[index].isComplete.toggle()
        }
    }
    
    /// Task 완료 / 취소 여부 확인 메서드
    ///
    /// - Parameter task: 완료 / 취소 여부 확인이 필요한 task
    /// - Returns: 완료 / 취소 여부
    func checkIsCompleted(task: Task) -> Bool{
        let index = tasks.firstIndex(where: {
            $0.id == task.id
        })
        
        if let index{
            print("\(tasks[index].isComplete)")
            return tasks[index].isComplete
        }
        
        return false
    }
    
    
    /// Task 요소 삭제 메서드
    ///
    /// - Parameter task: 삭제할 Task
    func removeTask(task: Task){
        let index = tasks.firstIndex(where: {
            $0.id == task.id
        })
        
        if let index{
            tasks.remove(at: index)
        }
    }
}
