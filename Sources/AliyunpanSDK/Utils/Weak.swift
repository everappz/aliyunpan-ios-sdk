//
//  Weak.swift
//  AliyunpanSDK
//
//  Created by zhaixian on 2023/12/18.
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
class Weak<T: AnyObject> {
    weak var value: T?
    init(value: T) {
        self.value = value
    }
}
