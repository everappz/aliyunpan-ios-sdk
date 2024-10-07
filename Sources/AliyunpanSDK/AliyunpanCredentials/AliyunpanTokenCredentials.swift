//
//  AliyunpanTokenCredentials.swift
//  AliyunpanSDK
//
//  Created by zhaixian on 2024/1/16.
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
class AliyunpanTokenCredentials: AliyunpanCredentialsProtocol {
    let token: AliyunpanToken
    
    init(_ token: AliyunpanToken) {
        self.token = token
    }
    
    func authorize(appId: String, scope: String) async throws -> AliyunpanToken {
        token
    }
}
