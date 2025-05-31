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
    @Published var isLogin: Bool = false
    
    func login(email: String, password: String){
        print("함수 호출됨")
        let request = LoginRequest(email: email, password: password)
        
        Task{
            do{
                let response = try await AuthService.share.login(loginRequest: request)
                
                let isSaved = try KeyChainUtil.saveValue(response.accessToken, "accessToken")
                
                guard isSaved else{
                    print("저장 실패")
                    isLogin = false
                    return
                }
                
                print("토큰 저장 성공")
                isLogin = true
            }catch{
                print("로그인 실패: ", error)
            }
        }
    }
    
}
