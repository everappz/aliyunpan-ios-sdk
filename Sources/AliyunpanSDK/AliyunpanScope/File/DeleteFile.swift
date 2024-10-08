//
//  DeleteFile.swift
//  AliyunpanSDK
//  gen code
//

import Foundation

@available(iOS 13.0, macOS 10.15, tvOS 13.0, visionOS 1.0, *)
extension AliyunpanFileScope {
    /// 删除文件
    public class DeleteFile: AliyunpanCommand {
        public var httpMethod: HTTPMethod { .post }
        public var uri: String {
            "/adrive/v1.0/openFile/delete"
        }

        public struct Request: Codable {
            /// drive id
            public let drive_id: String
            /// file_id
            public let file_id: String

            public init(drive_id: String, file_id: String) {
                self.drive_id = drive_id
                self.file_id = file_id
            }
        }

        public struct Response: Codable {
            /// drive id
            public let drive_id: String
            /// file_id
            public let file_id: String
            /// 异步任务id，有的话表示需要经过异步处理。
            public var async_task_id: String?
        }

        public let request: Request?
        public init(_ request: Request) {
            self.request = request
        }
    }
}
