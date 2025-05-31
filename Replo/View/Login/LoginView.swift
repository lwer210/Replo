//
//  LoginView.swift
//  Replo
//
//  Created by 이상훈 on 5/27/25.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var vm: AuthViewModel
    
    var body: some View {
        VStack{
            VStack{
                Image(systemName: "list.clipboard")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.blue)
                
                Text("Replo")
                    .font(.largeTitle)
                    .bold()
            }
            
            VStack{
                TextField("Email", text: $vm.email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4))
                    )
                    .padding(.horizontal)
                
                SecureField("Password", text: $vm.password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4))
                    )
                    .padding()
                
                Button {
                    vm.login(email: vm.email, password: vm.password)
                } label: {
                    Text("Login")
                        .foregroundStyle(Color.white)
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.black)
                        .cornerRadius(8)
                }
                .padding(.horizontal)
            }
            .padding()
            .padding(.vertical, 30)
        }
    }
}

#Preview {
    LoginView(vm: AuthViewModel())
}
