//
//  Channel.swift
//
//
//  Created by Helloyunho on 2021/07/12.
//

import Foundation

public protocol ChannelPayload: Codable {
    var id: Snowflake { get }
    var type: ChannelTypes { get }
}

public enum ChannelTypes: UInt8, Codable {
    case GUILD_TEXT, DM, GUILD_VOICE, GROUP_DM, GUILD_CATEGORY, GUILD_NEWS, GUILD_STORE
    case GUILD_NEWS_THREAD = 10, GUILD_PUBLIC_THREAD, GUILD_PRIVATE_THREAD, GUILD_STAGE_VOICE
}

public protocol TextChannelPayload: ChannelPayload {
    var lastMessageId: Snowflake? { get }
    var lastPinTimestamp: Date? { get }
}

public enum OverwriteType: UInt8, Codable {
    case ROLE, USER
}

public struct OverwritePayload: Codable {
    public let id: Snowflake
    public let type: OverwriteType
    public let allow: String
    public let deny: String
}

public protocol GuildChannelPayload: ChannelPayload {
    var guildId: Snowflake { get }
    var name: String { get }
    var position: Int { get }
    var permissionOverwrites: [OverwritePayload] { get }
    var nsfw: Bool { get }
    var parentId: Snowflake? { get }
}

public protocol GuildTextBasedChannelPayload: GuildChannelPayload, TextChannelPayload {
    var topic: String? { get }
}

public struct GuildTextChannelPayload: GuildTextBasedChannelPayload {
    public let id: Snowflake
    public let parentId: Snowflake?
    public let lastMessageId: Snowflake?
    public let topic: String?
    public let guildId: Snowflake
    public let name: String
    public let position: Int
    public let permissionOverwrites: [OverwritePayload]
    public let nsfw: Bool
    public let lastPinTimestamp: Date?
    public let type: ChannelTypes
    public let rateLimitPerUser: Int
}

public struct DMChannelPayload: TextChannelPayload {
    public let lastMessageId: Snowflake?
    public let lastPinTimestamp: Date?
    public let id: Snowflake
    public let type: ChannelTypes
    // public let recipients: [UserPayload]
}

public enum VideoQualityMode: UInt8, Codable {
    case AUTO = 1, FULL
}

public struct GuildVoiceChannelPayload: GuildChannelPayload {
    public let guildId: Snowflake
    public let name: String
    public let position: Int
    public let permissionOverwrites: [OverwritePayload]
    public let nsfw: Bool
    public let parentId: Snowflake?
    public let id: Snowflake
    public let type: ChannelTypes
    public let bitrate: Int
    public let userLimit: Int
    public let videoQualityMode: VideoQualityMode
}

public struct GroupDMChannelPayload: TextChannelPayload {
    public let lastMessageId: Snowflake?
    public let lastPinTimestamp: Date?
    public let id: Snowflake
    public let type: ChannelTypes
    // public let recipients: [UserPayload]
    public let name: String
    public let icon: String?
    public let ownerId: Snowflake
}

public struct GuildCategoryChannelPayload: GuildChannelPayload {
    public let guildId: Snowflake
    public let name: String
    public let position: Int
    public let permissionOverwrites: [OverwritePayload]
    public let nsfw: Bool
    public let parentId: Snowflake?
    public let id: Snowflake
    public let type: ChannelTypes
}

public struct GuildNewsChannelPayload: GuildTextBasedChannelPayload {
    public let id: Snowflake
    public let parentId: Snowflake?
    public let lastMessageId: Snowflake?
    public let topic: String?
    public let guildId: Snowflake
    public let name: String
    public let position: Int
    public let permissionOverwrites: [OverwritePayload]
    public let nsfw: Bool
    public let lastPinTimestamp: Date?
    public let type: ChannelTypes
}

public struct GuildStoreChannelPayload: GuildChannelPayload {
    public let guildId: Snowflake
    public let name: String
    public let position: Int
    public let permissionOverwrites: [OverwritePayload]
    public let nsfw: Bool
    public let parentId: Snowflake?
    public let id: Snowflake
    public let type: ChannelTypes
}

public struct GuildThreadChannelPayload: GuildTextBasedChannelPayload {
    public let id: Snowflake
    public let parentId: Snowflake?
    public let lastMessageId: Snowflake?
    public let topic: String?
    public let guildId: Snowflake
    public let name: String
    public let position: Int
    public let permissionOverwrites: [OverwritePayload]
    public let nsfw: Bool
    public let lastPinTimestamp: Date?
    public let type: ChannelTypes
    public let messageCount: Int
    public let memberCount: Int
    // public let member: ThreadMemberPayload
    // public let threadMetadata: ThreadMetadataPayload
}

public struct GuildStageVoiceChannelPayload: GuildChannelPayload {
    public let guildId: Snowflake
    public let name: String
    public let position: Int
    public let permissionOverwrites: [OverwritePayload]
    public let nsfw: Bool
    public let parentId: Snowflake?
    public let id: Snowflake
    public let type: ChannelTypes
    public let bitrate: Int
    public let userLimit: Int
}
