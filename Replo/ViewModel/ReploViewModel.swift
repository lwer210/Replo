//
//  ReploViewModel.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import Foundation

class ReploViewModel: ObservableObject{
    // TaskModel 배열 선언
    @Published var tasks: [TaskModel] = []
}
