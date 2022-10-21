//
//  Etc.swift
//  
//
//  Created by Helloyunho on 2022/10/20.
//

import Foundation

public struct GuildPreviewPayload: Codable {
    var id: String
    var name: String
    var icon: NullableValue<String>
    var splash: NullableValue<String>
    var discoverySplash: NullableValue<String>
    var emojis: [EmojiPayload]
//    var features: [GuildFeature]
    var approximateMemberCount: UInt
    var approximatePresenceCount: UInt
    var description: NullableValue<String>
}

public struct GuildWidgetPayload: Codable {
    var enabled: Bool
    var channelId: NullableValue<String>
}

public struct WelcomeScreenChannelPayload: Codable {
    var channelId: String
    var description: String
    var emojiId: NullableValue<String>
    var emojiName: NullableValue<String>
}

public struct WelcomeScreenPayload: Codable {
    var description: NullableValue<String>
    var welcomeChannels: [WelcomeScreenChannelPayload]
}

public struct ActiveThreadsPayload: Codable {
    var threads: [GuildThreadChannelPayload]
    var members: [ThreadMemberPayload]
}

public struct GetGuildPruneCountParams: Codable {
    var days: UInt?
    var includeRoles: [String]?
}

public struct BeginGuildPrunePayload: Codable {
    var days: UInt?
    var compatePruneCount: Bool?
    var includeRoles: [String]?
    var reason: String?
}

public enum GuildWidgetImageStyle: String, Codable {
    case shield
    case banner1
    case banner2
    case banner3
    case banner4
}

public struct GetGuildWidgetImageParams: Codable {
    var style: GuildWidgetImageStyle
}

public struct EditWelcomeScreenPayload: Codable {
    var enabled: NullableValue<Bool>?
    var welcomeChannels: NullableValue<[WelcomeScreenChannelPayload]>?
    var description: NullableValue<String>?
}

public struct EditCurrentUserVoiceStatePayload: Codable {
    var channelId: String
    var suppress: Bool?
    var requestToSpeakTimestamp: NullableValue<ISO8601Decoder>?
}

public struct EditUserVoiceStatePayload: Codable {
    var channelId: String
    var suppress: Bool?
}
