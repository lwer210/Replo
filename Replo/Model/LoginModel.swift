//
//  LoginModel.swift
//  Replo
//
//  Created by 이상훈 on 5/28/25.
//

import Foundation

// Codable 프로토콜: Swift 객체를 Json으로 바꿔주고 그 반대 역할도 가능하게 만들어줌

/// 로그인 API 요청 객체
struct LoginRequest: Codable{
    
    /// 사용자 이메일
    let email: String
    
    /// 사용자 패스워드
    let password: String
}

/// 로그인 API 응답 객체
struct LoginResponse: Codable{
    
    /// access 토큰
    let accessToken: String
    
    /// refresh 토큰
    let refreshToken: String
    
    /// 로그인한 사용자 닉네임
    let nickname: String
}
