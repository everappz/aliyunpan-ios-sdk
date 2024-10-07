//
//  AliyunpanSpaceInfo.swift
//  AliyunpanSDK
//
//  Created by zhaixian on 2023/11/30.
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
public struct AliyunpanSpaceInfo: Codable {
    public let used_size: Int64
    public let total_size: Int64
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
extension AliyunpanSpaceInfo: CustomStringConvertible {
    public var description: String {
        """
[AliyunpanSpaceInfo]
    used_size: \(used_size)
    total_size: \(total_size)
"""
    }
}
