//
//  DateFormatterManage.swift
//  Replo
//
//  Created by 이상훈 on 5/24/25.
//

import Foundation


/// DateFormatter 설정 Util
enum DateFormatterManage{
    
    /// yyyy-MM-dd HH:mm:ss 형태로 변환하는 DateFormatter 정의
    static let fullDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter
    }()
    
    /// yyyy-MM-dd 형태로 변환하는 DateFormatter 정의
    static let yyyyMMddFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
}
