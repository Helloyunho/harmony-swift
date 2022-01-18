//
//  Gateway.swift
//
//
//  Created by Helloyunho on 2021/07/10.
//

import Foundation

public struct GatewayPayload: Codable {
    public let url: URL
}

public struct BotGatewayPayload: Codable {
    public let url: URL
    public let shards: Int
    public let sessionStartLimit: SessionStartLimit

    enum CodingKeys: String, CodingKey {
        case url, shards
        case sessionStartLimit = "session_start_limit"
    }
}

public struct SessionStartLimit: Codable {
    public let total, remaining, resetAfter, maxConcurrency: Int

    enum CodingKeys: String, CodingKey {
        case total, remaining
        case resetAfter = "reset_after"
        case maxConcurrency = "max_concurrency"
    }
}
