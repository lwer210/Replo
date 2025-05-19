//
//  TasksModel.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import Foundation

struct TaskModel: Identifiable{
    let id: String = UUID().uuidString
    var isCompleted: Bool = false
    var tasks: String
    var category: Category
    var createdAt: Date = Date() // 생성 일시
}

// String을 따르는 이유는 rawValue를 사용하기 위해서임 -> 문자열을 그대로 꺼내거나 enum으로 변환하기 편리해짐
enum Category: String{
    case personal
    case shopping
    case health
    case work
}
