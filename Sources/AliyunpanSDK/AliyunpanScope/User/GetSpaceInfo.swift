//
//  GetSpaceInfo.swift
//  AliyunpanSDK
//  gen code
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
extension AliyunpanUserScope {
    /// 获取用户空间信息
    public class GetSpaceInfo: AliyunpanCommand {
        public var httpMethod: HTTPMethod { .post }
        public var uri: String {
            "/adrive/v1.0/user/getSpaceInfo"
        }

        public typealias Request = Void

        public struct Response: Codable {
            public let personal_space_info: AliyunpanSpaceInfo
        }

        public init() {}
    }
}
