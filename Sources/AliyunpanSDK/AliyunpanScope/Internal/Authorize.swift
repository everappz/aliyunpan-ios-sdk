//
//  Authorize.swift
//  AliyunpanSDK
//  gen code
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
extension AliyunpanInternalScope {
    /// 将用户浏览器重定向到云盘登录授权页面上
    public class Authorize: AliyunpanCommand {
        public var httpMethod: HTTPMethod { .get }
        public var uri: String {
            "/oauth/authorize"
        }

        public struct Request: Codable {
            /// 创建应用时分配的appId
            public let client_id: String
            /// 授权后要回调的URI，即接收Authorization Code的URI。请使用urlEncode对链接进行处理
            public let redirect_uri: String
            /// 申请的授权范围，多个用逗号分隔（示例：user:base,file:all:read）
            public let scope: String
            /// 仅支持code
            public let response_type: String
            public let bundle_id: String
            public let code_challenge: String?
            public let code_challenge_method: String?
            /// 用于保持请求和回调的状态，在重定向用户浏览器到redirect_uri时原样回传该参数
            public let state: String?
            /// h5下true强制用户登录，默认false
            public let relogin: Bool?
            public let source: String?
            /// 已授权后，后续无需用户主动点击授权。true 开启，nil 关闭，默认 nil
            public let auto_login: String?
            
            public init(client_id: String, redirect_uri: String, scope: String, response_type: String, code_challenge: String? = nil, code_challenge_method: String? = nil, state: String? = nil, relogin: Bool? = nil, bundle_id: String = Bundle.main.bundleId, source: String? = "appLink", auto_login: String? = nil) {
                self.client_id = client_id
                self.redirect_uri = redirect_uri
                self.scope = scope
                self.response_type = response_type
                self.code_challenge = code_challenge
                self.code_challenge_method = code_challenge_method
                self.state = state
                self.relogin = relogin
                self.bundle_id = bundle_id
                self.source = source
                self.auto_login = auto_login
            }
        }

        public struct Response: Codable {
            public let redirectUri: URL
        }

        public let request: Request?
        public init(_ request: Request) {
            self.request = request
        }
    }
}
