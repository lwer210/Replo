//
//  ReploViewModel.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import Foundation
import SwiftUI

class ReploViewModel: ObservableObject{
    // TaskModel 배열 선언
    @Published var tasks: [TaskModel] = []
    
    func chooseCategoryColor(category: Category) -> Color{
        switch category {
        case .all:
            return Color.green
        case .personal:
            return Color.blue
        case .shopping:
            return Color.green
        case .work:
            return Color.purple
        case .health:
            return Color.red
        }
    }
}
