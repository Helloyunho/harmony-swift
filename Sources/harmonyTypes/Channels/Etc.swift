//
//  Etc.swift
//  
//
//  Created by Helloyunho on 2022/01/30.
//

import Foundation

public struct FollowedChannelPayload: Codable {
    public var channelId: Snowflake
    public var webhookId: Snowflake
}

public enum AllowedMentionType: Codable {
    case roles
    case users
    case everyone
}

public struct AllowedMentionPayload: Codable {
    public var parse: [AllowedMentionType]
    public var roles: [Snowflake]
    public var users: [Snowflake]
    public var repliedUser: Bool
}
