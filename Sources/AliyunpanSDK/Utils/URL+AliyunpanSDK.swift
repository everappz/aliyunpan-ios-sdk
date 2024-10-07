//
//  URL+AliyunpanSDK.swift
//  
//
//  Created by zhaixian on 2023/11/27.
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
extension URL {
    var queryItems: [URLQueryItem] {
        guard let urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: false) else {
            return []
        }
        return urlComponents.queryItems ?? []
    }
}
