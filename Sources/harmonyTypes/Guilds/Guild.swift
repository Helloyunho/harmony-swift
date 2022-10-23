//
//  Guild.swift
//  
//
//  Created by Helloyunho on 2022/10/21.
//

import Foundation

public struct GuildPayload: Codable {
    var id: Snowflake
    var name: String
    var icon: NullableValue<String>
    var iconHash: NullableValue<String>?
    var splash: NullableValue<String>
    var discoverySplash: NullableValue<String>
    var owner: Bool?
    var ownerId: Snowflake
    var permissions: String?
    var region: NullableValue<String>?
    var afkChannelId: NullableValue<Snowflake>
    var afkTimeout: UInt
    var widgetEnabled: Bool
    var widgetChannelId: NullableValue<String>?
    var verificationLevel: VerificationLevel
    var defaultMessageNotifications: DefaultMessageNotificationLevel
    var explicitContentFilter: ExplicitContentFilterLevel
//    var roles: [RolePayload]
    var emojis: [EmojiPayload]
    var features: [GuildFeature]
    var mfaLevel: MFALevel
    var applicationId: NullableValue<Snowflake>
    var systemChannelId: NullableValue<Snowflake>
    var systemChannelFlags: UInt8
    var joinedAt: NullableValue<Snowflake>?
    var large: Bool?
    var unavailable: Bool?
    var memberCount: UInt?
//    var voiceStates: [VoiceStatePayload]?
//    var members: [GuildMemberPayload]?
//    var channels: [GuildChannelPayload]?
}

public enum GuildChannelPayloads: Codable {
    case TEXT(GuildTextChannelPayload)
    case VOICE(GuildVoiceChannelPayload)
    case CATEGORY(GuildCategoryPayload)
}

public enum VerificationLevel: UInt8, Codable {
    case NONE = 0, LOW, MEDIUM, HIGH, VERY_HIGH
}

public enum DefaultMessageNotificationLevel: UInt8, Codable {
    case ALL_MESSAGES = 0, ONLY_MENTIONS
}

public enum ExplicitContentFilterLevel: UInt8, Codable {
    case DISABLED = 0, MEMBERS_WITHOUT_ROLES, ALL_MEMBERS
}

public enum GuildFeature: String, Codable {
    case ANIMATED_ICON, BANNER, COMMERCE, COMMUNITY, DISCOVERABLE, FEATURABLE, INVITE_SPLASH, MEMBER_VERIFICATION_GATE_ENABLED, MONETIZATION_ENABLED, MORE_STICKERS, NEWS, PARTNERED, PREVIEW_ENABLED, PRIVATE_THREADS, ROLE_ICONS, SEVEN_DAY_THREAD_ARCHIVE, THREE_DAY_THREAD_ARCHIVE, TICKETED_EVENTS_ENABLED, VANITY_URL, VERIFIED, VIP_REGIONS, WELCOME_SCREEN_ENABLED
}

public enum MFALevel: UInt8, Codable {
    case NONE = 0, ELEVATED
}

public enum SystemChannelFlags: UInt8, Codable {
    case SUPPRESS_JOIN_NOTIFICATIONS = 1
    case SUPPRESS_PREMIUM_SUBSCRIPTIONS = 2
    case SUPPRESS_GUILD_REMINDER_NOTIFICATIONS = 4
    case SUPPRESS_JOIN_NOTIFICATION_REPLIES = 8
}
