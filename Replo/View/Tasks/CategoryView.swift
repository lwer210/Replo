//
//  CategoryView.swift
//  Replo
//
//  Created by 이상훈 on 5/21/25.
//

import SwiftUI

struct CategoryView: View {
    
    var category: Category
    @ObservedObject var vm: ReploViewModel
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill()
        }
    }
}

#Preview {
    CategoryView(category: .health, vm: ReploViewModel())
}
