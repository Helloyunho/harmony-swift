//
//  GuildChannels.swift
//  
//
//  Created by Helloyunho on 2022/01/30.
//

import Foundation

public enum OverwriteType: UInt8, Codable {
    case role = 0, member
}

public struct OverwritePayload: Codable {
    public var id: Snowflake
    public var type: OverwriteType
    public var allow: String
    public var deny: String
}

public protocol GuildChannelPayload: ChannelPayload {
    var guildId: Snowflake { get set }
    var name: String { get set }
    var position: Int { get set }
    var permissionOverwrites: [OverwritePayload] { get set }
    var nsfw: Bool { get set }
    var parent: Nullable<Snowflake> { get set }
}

public protocol VoiceChannelPayload: GuildChannelPayload {
    var bitrate: UInt { get set }
    var userLimit: UInt { get set }
    var rtcRegion: Nullable<String> { get set }
}

public struct GuildTextChannelPayload: GuildChannelPayload, TextChannelPayload {
    public var guildId: Snowflake
    public var name: String
    public var position: Int
    public var permissionOverwrites: [OverwritePayload]
    public var nsfw: Bool
    public var parent: Nullable<Snowflake>
    public var lastMessageId: Nullable<Snowflake>?
    public var lastPinTimestamp: Nullable<String>?
    public var id: Snowflake
    public var type: ChannelType = .GUILD_TEXT
    public var rateLimitPerUser: UInt
    public var topic: Nullable<String>
    public var defaultAutoArchiveDuration: UInt
}

public struct GuildAnnouncementChannelPayload: GuildChannelPayload, TextChannelPayload {
    public var guildId: Snowflake
    public var name: String
    public var position: Int
    public var permissionOverwrites: [OverwritePayload]
    public var nsfw: Bool
    public var parent: Nullable<Snowflake>
    public var lastMessageId: Nullable<Snowflake>?
    public var lastPinTimestamp: Nullable<String>?
    public var id: Snowflake
    public var type: ChannelType = .GUILD_ANNOUNCEMENT
    public var rateLimitPerUser: UInt
    public var topic: Nullable<String>
    public var defaultAutoArchiveDuration: UInt
}

public enum VideoQualityMode: UInt8, Codable {
    case auto = 1, full
}

public struct GuildVoiceChannelPayload: VoiceChannelPayload {
    public var guildId: Snowflake
    public var name: String
    public var position: Int
    public var permissionOverwrites: [OverwritePayload]
    public var nsfw: Bool
    public var parent: Nullable<Snowflake>
    public var id: Snowflake
    public var type: ChannelType = .GUILD_VOICE
    public var bitrate: UInt
    public var userLimit: UInt
    public var rtcRegion: Nullable<String>
    public var videoQualityMode: VideoQualityMode
}

public struct GuildCategoryPayload: GuildChannelPayload {
    public var guildId: Snowflake
    public var name: String
    public var position: Int
    public var permissionOverwrites: [OverwritePayload]
    public var nsfw: Bool
    public var parent: Nullable<Snowflake>
    public var id: Snowflake
    public var type: ChannelType = .GUILD_CATEGORY
}

public protocol EditGuildChannelPayload: Codable {
    var name: String? { get set }
    var position: Nullable<Int>? { get set }
    var permissionOverwrites: Nullable<[OverwritePayload]>? { get set }
}

public struct EditGuildStoreChannelPayload: EditGuildChannelPayload {
    public var name: String?
    public var position: Nullable<Int>?
    public var permissionOverwrites: Nullable<[OverwritePayload]>?
    public var nsfw: Nullable<Bool>?
    public var parentId: Nullable<Snowflake>?
}

public struct EditGuildAnnouncementChannelPayload: EditGuildChannelPayload {
    public var name: String?
    public var position: Nullable<Int>?
    public var permissionOverwrites: Nullable<[OverwritePayload]>?
    public var nsfw: Nullable<Bool>?
    public var parentId: Nullable<Snowflake>?
    public var type: ChannelType?
    public var topic: Nullable<String>?
    public var defaultAutoArchiveDuration: Nullable<UInt>?
}

public struct EditGuildTextChannelPayload: EditGuildChannelPayload {
    public var name: String?
    public var position: Nullable<Int>?
    public var permissionOverwrites: Nullable<[OverwritePayload]>?
    public var nsfw: Nullable<Bool>?
    public var parentId: Nullable<Snowflake>?
    public var type: ChannelType?
    public var topic: Nullable<String>?
    public var defaultAutoArchiveDuration: Nullable<UInt>?
    public var rateLimitPerUser: Nullable<UInt>?
}

public struct EditGuildVoiceChannelPayload: EditGuildChannelPayload {
    public var name: String?
    public var position: Nullable<Int>?
    public var permissionOverwrites: Nullable<[OverwritePayload]>?
    public var bitrate: Nullable<UInt>?
    public var userLimit: Nullable<UInt>?
    public var parentId: Nullable<Snowflake>?
    public var rtcRegion: Nullable<String>?
    public var videoQualityMode: Nullable<VideoQualityMode>?
}

public typealias EditGuildCategoryPayload = EditGuildChannelPayload

public struct EditChannelPermissionsPayload: Codable {
    public var allow: String
    public var deny: String
    public var type: OverwriteType
}
