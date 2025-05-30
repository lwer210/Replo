//
//  KeyChainUtil.swift
//  Replo
//
//  Created by 이상훈 on 5/29/25.
//

import Foundation
import Security


/// KeyChain Util에서 발생할 수 있는 예외 정의(파일 분리 예정)
enum KeyChainError: Error {
    case dataConversionFailed
}

/// KeyChain Util 클래스
class KeyChainUtil{
    
    /// KeyChain 데이터 저장 처리 메서드
    ///
    /// - Parameters:
    ///   - value: 저장할 값
    ///   - key:저장 값 식별자
    /// - Returns: 저장 성공 여부
    static func saveValue(_ value: String, _ key: String) throws -> Bool{
        guard let data = value.data(using: .utf8) else{ /// value UTF-8 바이트 배열로 변환 -> KeyChain은 바이너리 데이터만 저장 가능
            print("Data 변환 실패")
            throw KeyChainError.dataConversionFailed
        }
        
        // KeyChain에 들어갈 데이터 설정
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword, // kSecClass: KeyChain에 저장할 아이템에 종류를 나타냄 -> kSecClassGenericPassword: 패스워드 타입
            kSecAttrAccount as String: key, // kSecAttrAccount: 식별자 지정
            kSecValueData as String: data // kSecValueData: value 저장
        ]
        
        // SecItemDelete: 기존에 동일한 키를 가진 Item 제거 메서드
        SecItemDelete(query as CFDictionary)
        
        // SecItemAdd: KeyChain 아이템 추가
        // 첫번째 매개변수: 저장할 아이템 정보(Dictionary)
        // 두번째 매개변수: 아이템 저장 성공 시 아이템 정보 반환받을 인자
        let status = SecItemAdd(query as CFDictionary, nil)
        
        // errSecSuccess: 성공 코드
        return status == errSecSuccess
        
    }
    
//    static func getValue(_ key: String) -> String?{
//        let query: [String: Any] = [
//            kSecClass as String: kSecClassGenericPassword,
//            kSecAttrAccount as String: key,
//            kSecReturnData as String: true,
//            kSecMatchLimit as String: kSecMatchLimitOne
//        ]
//        
//        var item: CFTypeRef?
//        let status = SecItemCopyMatching(query as CFDictionary, &item)
//        
//        
//        
//    }
}
