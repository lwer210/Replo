//
//  TodayView.swift
//  Replo
//
//  Created by 이상훈 on 5/19/25.
//

import SwiftUI

struct TodayView: View {
    
    @ObservedObject var vm: ReploViewModel
    
    var body: some View {
        Text("Today View")
    }
}

#Preview {
    TodayView(vm: ReploViewModel())
}
