//
//  Thread.swift
//  
//
//  Created by Helloyunho on 2022/07/29.
//

import Foundation

public struct ThreadMetadataPayload: Codable {
    public var archived: Bool
    public var autoArchiveDuration: UInt
    public var archiveTimestamp: String
    public var locked: Bool
    public var invitable: Bool?
}

public struct ThreadMemberPayload: Codable {
    public var id: Snowflake?
    public var userId: Snowflake?
    public var joinTimestamp: String
    public var flags: UInt
}

public struct GuildThreadChannelPayload: GuildChannelPayload, TextChannelPayload {
    public var guildId: Snowflake
    public var name: String
    public var position: Int
    public var permissionOverwrites: [OverwritePayload]
    public var nsfw: Bool
    public var parent: Nullable<Snowflake>
    public var lastMessageId: Nullable<Snowflake>?
    public var lastPinTimestamp: Nullable<String>?
    public var id: Snowflake
    public var type: ChannelType
    public var rateLimitPerUser: UInt
    public var topic: Nullable<String>
    public var defaultAutoArchiveDuration: UInt
    public var messageCount: UInt
    public var memberCount: UInt
    public var threadMetadata: ThreadMetadataPayload
    public var member: ThreadMemberPayload
    public var permissions: String
}

public struct EditGuildThreadChannelPayload: Codable {
    public var name: String?
    public var archived: Bool?
    public var autoArchiveDuration: UInt?
    public var locked: Bool?
    public var invitable: Bool?
    public var rateLimitPerUser: Nullable<UInt>?
    public var flags: UInt?
}

public struct StartThreadWithMessagePayload: Codable {
    public var name: String
    public var autoArchiveDuration: UInt?
}

public struct StartThreadWithoutMessagePayload: Codable {
    public var name: String
    public var autoArchiveDuration: UInt?
    public var type: ChannelType?
    public var invitable: Bool?
}

public struct ListThreadsPayload: Codable {
    public var threads: [GuildThreadChannelPayload]
    public var members: [ThreadMemberPayload]
    public var hasMore: Bool
}

public struct ListThreadsParams {
    public var before: String?
    public var limit: UInt?
}
