//
//  ThreadSafe.swift
//  Pods
//
//  Created by zhaixian on 2023/12/20.
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
@propertyWrapper
struct ThreadSafe<Element> {
    var wrappedValue: Element {
        get {
            queue.sync {
                projectValue
            }
        }
        set {
            queue.sync {
                projectValue = newValue
            }
        }
    }
    
    private let queue = DispatchQueue(
        label: "com.aliyunpanSDK.\(String(describing: Element.self))",
        attributes: .concurrent)
    
    var projectValue: Element
    
    init(wrappedValue: Element) {
        projectValue = wrappedValue
    }
}
