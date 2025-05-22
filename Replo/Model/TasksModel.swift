//
//  TasksModel.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import Foundation

// Task 모델 선언
struct Task: Identifiable{
    let id: String = UUID().uuidString
    let isComplete: Bool // 할 일 완료 여부
    let createdAt: Date = Date() // 생성 날짜
    let todo: String // 할 일
}
