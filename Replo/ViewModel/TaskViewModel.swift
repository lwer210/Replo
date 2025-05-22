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
    // Task 배열 선언
    @Published var tasks: [Task] = []
}
