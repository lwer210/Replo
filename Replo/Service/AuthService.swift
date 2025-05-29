//
//  AuthService.swift
//  Replo
//
//  Created by 이상훈 on 5/28/25.
//

import Foundation

class AuthService{
    static let share = AuthService()
    
    func login(loginRequest: LoginRequest) async throws -> LoginResponse{
        print("AuthService 호출됨")
        
        // URL 정보 생성
        guard let url = URL(string: "http://localhost:8080/api/v1/auth/login") else{
            print("URL 생성 실패함")
            throw URLError(.badURL) // 실패 시 예외 발생
        }
        
        var request = URLRequest(url: url) // URLRequest 생성
        request.httpMethod = "POST" // HTTP Method 설정
        request.setValue("application/json", forHTTPHeaderField: "Content-Type") // HTTP Header 설정
        
        do{
            let jsonData = try JSONEncoder().encode(loginRequest) // 요청 객체 JSON 형태로 변환
            request.httpBody = jsonData // HTTP Request body 설정
        }catch{
            print("Json 인코딩 실패함 \(error)")
            throw error
        }
        
        let (data, _) = try await URLSession.shared.data(for: request) // 로그인 API 호출
        
        let decodedResponse = try JSONDecoder().decode(LoginResponse.self, from: data) // 응답 데이터 LoginResponse로 변환
        return decodedResponse // 반환
    }
}
