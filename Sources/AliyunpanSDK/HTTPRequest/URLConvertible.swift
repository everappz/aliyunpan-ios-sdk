//
//  URLConvertible.swift
//  AliyunpanSDK
//
//  Created by zhaixian on 2023/11/23.
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
protocol URLConvertible {
    func asURL() throws -> URL
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
extension String: URLConvertible {
    func asURL() throws -> URL {
        guard let url = URL(string: self) else {
            throw AliyunpanError.NetworkSystemError.invalidURL
        }
        return url
    }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
extension URL: URLConvertible {
    func asURL() throws -> URL { self }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
struct AliyunpanURL: URLConvertible {
    var host: String = Aliyunpan.env.host
    let uri: String
    
    func asURL() throws -> URL {
        try "\(host)\(uri)".asURL()
    }
}
