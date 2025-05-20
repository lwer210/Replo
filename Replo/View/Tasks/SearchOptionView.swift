//
//  CategoryView.swift
//  Replo
//
//  Created by 이상훈 on 5/20/25.
//

import SwiftUI

struct CategoryView: View {
    
    var searchOption: SearchOption // 검색 옵션
    var icon: String // 아이콘
    var isActive: Bool // 활성 여부
    var width: CGFloat // width 값
    
    var body: some View {
        Button {
            
        } label: {
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: 25)
                    .fill(isActive ? Color.blue : Color.gray)
                    .frame(width: width, height: 40)
                
                HStack{
                    Image(systemName: icon)
                        .frame(width: 30, height: 30)
                        .foregroundColor(isActive ? Color.white : Color.black)
                    
                    Text(searchOption.rawValue)
                        .foregroundColor(isActive ? Color.white : Color.black)
                }
            }
        }
    }
}

#Preview {
    CategoryView(searchOption: .all, icon: "square.grid.2x2", isActive: true, width: 90)
}
