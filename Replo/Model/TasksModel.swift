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
// CaseIterable: Enum 내에 정의된 case 값 모두 가져오기 편리하게 만들기 위해서 사용
enum Category: String, CaseIterable{
    case personal
    case shopping
    case health
    case work
    case all
    
    var label: String{
        switch self{
        case .personal:
            return "person"
        case .shopping:
            return "cart"
        case .health:
            return "heart"
        case .work:
            return "figure.walk.motion"
        case .all:
            return "square.grid.2x2"
        }
    }
}
