//
//  Guild.swift
//  
//
//  Created by Helloyunho on 2022/01/30.
//

import Foundation

public enum OverwriteType: UInt8, Codable {
    case role = 0, member
}

public struct OverwritePayload: Codable {
    var id: Snowflake
    var type: OverwriteType
    var allow: String
    var deny: String
}

public protocol GuildChannelPayload: ChannelPayload {
    var guildId: Snowflake { get set }
    var name: String { get set }
    var position: Int { get set }
    var permissionOverwrites: [OverwritePayload] { get set }
    var nsfw: Bool { get set }
    var parent: NullableValue<Snowflake> { get set }
}

public struct GuildTextChannelPayload: GuildChannelPayload, TextChannelPayload {
    public var guildId: Snowflake
    public var name: String
    public var position: Int
    public var permissionOverwrites: [OverwritePayload]
    public var nsfw: Bool
    public var parent: NullableValue<Snowflake>
    public var lastMessageId: NullableValue<Snowflake>?
    public var lastPinTimestamp: NullableValue<String>?
    public var id: Snowflake
    public var type: ChannelType
    public var rateLimitPerUser: UInt
    public var topic: NullableValue<String>
    public var defaultAutoArchiveDuration: UInt
}

public typealias GuildNewsChannelPayload = GuildTextChannelPayload

public enum VideoQualityMode: UInt8, Codable {
    case auto = 1, full
}

public struct GuildVoiceChannelPayload: GuildChannelPayload {
    public var guildId: Snowflake
    public var name: String
    public var position: Int
    public var permissionOverwrites: [OverwritePayload]
    public var nsfw: Bool
    public var parent: NullableValue<Snowflake>
    public var id: Snowflake
    public var type: ChannelType
    public var bitrate: UInt
    public var userLimit: UInt
    public var rtcRegion: NullableValue<String>
    public var videoQualityMode: VideoQualityMode
}

public typealias CategoryPayload = GuildChannelPayload
public typealias GuildStoreChannel = GuildChannelPayload

public protocol EditGuildChannelPayload: Codable {
    var name: String? { get set }
    var position: NullableValue<Int>? { get set }
    var permissionOverwrites: NullableValue<[OverwritePayload]>? { get set }
}

public struct EditGuildStoreChannelPayload: EditGuildChannelPayload {
    public var name: String?
    public var position: NullableValue<Int>?
    public var permissionOverwrites: NullableValue<[OverwritePayload]>?
    public var nsfw: NullableValue<Bool>?
    public var parentId: NullableValue<Snowflake>?
}

public struct EditGuildNewsChannelPayload: EditGuildChannelPayload {
    public var name: String?
    public var position: NullableValue<Int>?
    public var permissionOverwrites: NullableValue<[OverwritePayload]>?
    public var nsfw: NullableValue<Bool>?
    public var parentId: NullableValue<Snowflake>?
    public var type: ChannelType?
    public var topic: NullableValue<String>?
    public var defaultAutoArchiveDuration: NullableValue<UInt>?
}

public struct EditGuildTextChannelPayload: EditGuildChannelPayload {
    public var name: String?
    public var position: NullableValue<Int>?
    public var permissionOverwrites: NullableValue<[OverwritePayload]>?
    public var nsfw: NullableValue<Bool>?
    public var parentId: NullableValue<Snowflake>?
    public var type: ChannelType?
    public var topic: NullableValue<String>?
    public var defaultAutoArchiveDuration: NullableValue<UInt>?
    public var rateLimitPerUser: NullableValue<UInt>?
}

public struct EditGuildVoiceChannelPayload: EditGuildChannelPayload {
    public var name: String?
    public var position: NullableValue<Int>?
    public var permissionOverwrites: NullableValue<[OverwritePayload]>?
    public var bitrate: NullableValue<UInt>?
    public var userLimit: NullableValue<UInt>?
    public var parentId: NullableValue<Snowflake>?
    public var rtcRegion: NullableValue<String>?
    public var videoQualityMode: NullableValue<VideoQualityMode>?
}

public typealias EditGuildCategoryPayload = EditGuildChannelPayload

public struct EditChannelPermissionsPayload: Codable {
    public var allow: String
    public var deny: String
    public var type: OverwriteType
}
