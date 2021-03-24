//
//  SHKeychain.swift
//  SHPhotoPhoto
//
//  Created by shark on 2021/3/24.
//

import Foundation

public class SHKeychain: NSObject {
    
    static let shared = SHKeychain.init()
    
    private let keychain = Keychain.init()
    
    /// 保存值
    func save(_ value: String, _ key: String) throws {
        return try keychain.set(value, key: key)
    }
    
    /// 获取值
    func get(_ key: String) throws -> String? {
        return try keychain.get(key)
    }
}

