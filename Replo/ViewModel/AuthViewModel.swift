//
//  AuthViewModel.swift
//  Replo
//
//  Created by 이상훈 on 5/28/25.
//

import Foundation

class AuthViewModel: ObservableObject{
    @Published var email: String = ""
    @Published var password: String = ""
    
    func login(email: String, password: String){
        let request = LoginRequest(email: email, password: password)
        
        Task{
            do{
                let response = try await AuthService.share.login(loginRequest: request)
                print("로그인 성공: ", response)
            }catch{
                print("로그인 실패: ", error)
            }
        }
    }
}
