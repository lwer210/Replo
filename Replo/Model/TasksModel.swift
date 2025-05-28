//
//  TasksModel.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import Foundation


/// Task Model
struct TaskModel: Identifiable, Hashable{
    
    /// 고유 ID
    let id: String = UUID().uuidString
    
    /// 할 일 완료 여부
    var isComplete: Bool
    
    /// 생성 날짜
    let createdAt: Date = Date()
    
    /// 할 일
    let todo: String
}
