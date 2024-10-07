//
//  JSON+Codable.swift
//  AliyunpanSDK
//
//  Created by zhaixian on 2023/11/23.
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
class JSONParameterEncoder: JSONEncoder {
    static let `default` = JSONParameterEncoder()
    
    override init() {
        super.init()
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
        dateEncodingStrategy = .formatted(dateFormatter)
    }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
class JSONParameterDecoder: JSONDecoder {
    static let `default` = JSONParameterDecoder()
    
    override init() {
        super.init()
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
        dateDecodingStrategy = .formatted(dateFormatter)
    }
}
