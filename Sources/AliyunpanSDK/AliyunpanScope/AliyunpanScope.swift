//
//  AliyunpanScope.swift
//  AliyunpanSDK
//
//  Created by zhaixian on 2023/11/21.
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
public struct AliyunpanScope {
    public typealias User = AliyunpanUserScope
    public typealias VIP = AliyunpanVIPScope
    public typealias File = AliyunpanFileScope
    public typealias Video = AliyunpanVideoScope
    typealias Internal = AliyunpanInternalScope
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
public class AliyunpanUserScope {}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
public class AliyunpanVIPScope {}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
public class AliyunpanFileScope {
    public enum OrderBy: String, Codable {
        case created_at
        case updated_at
        case name
        case size
        case name_enhanced
    }

    public enum OrderDirection: String, Codable {
        case desc = "DESC"
        case asc = "ASC"
    }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
public class AliyunpanVideoScope {}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
class AliyunpanInternalScope {}
