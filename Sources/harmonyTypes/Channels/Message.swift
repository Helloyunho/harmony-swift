//
//  Message.swift
//
//
//  Created by Helloyunho on 2022/02/01.
//

import Foundation

public struct ChannelMentionPayload: Codable {
    public var id: Snowflake
    public var guildId: Snowflake
    public var type: ChannelType
    public var name: String
}

public struct AttachmentPayload: Codable {
    public var id: Snowflake
    public var filename: String
    public var contentType: String
    public var size: UInt
    public var url: String
    public var proxyUrl: String
    public var height: UInt?
    public var width: UInt?
}

public struct ReactionPayload: Codable {
    public var count: UInt
    public var me: Bool
//    public var emoji: EmojiPayload
}

public enum MessageType: UInt8, Codable {
    case `default` = 0, recipientAdd, recipientRemove, call, channelNameChange, channelIconChange, channelPinnedMessage, guildMemberJoin, userPremiumGuildSubscription, userPremiumGuildSubscriptionTier1, userPremiumGuildSubscriptionTier2, userPremiumGuildSubscriptionTier3, channelFollowAdd
    case guildDiscoveryDisqualified = 14, guildDiscoveryRequalified, guildDiscoveryGracePeriodInitialWarning, guildDiscoveryGracePeriodFinalWarning, threadCreated, reply, applicationCommand, threadStarterMessage, guildInviteReminder
}

public enum MessageActivityType: UInt8, Codable {
    case join = 1, spectate, listen
    case joinRequest = 5
}

public struct MessageActivityPayload: Codable {
    public var type: MessageActivityType
    public var partyId: Snowflake?
}

public struct MessageReferencePayload: Codable {
    public var messageId: Snowflake?
    public var channelId: Snowflake?
    public var guildId: Snowflake?
    public var failIfNotExists: Bool?
}

public enum MessageFlags: UInt8, Codable {
    case crossposted = 0b1
    case isCrosspost = 0b10
    case suppressEmbeds = 0b100
    case sourceMessageDeleted = 0b1000
    case urgent = 0b10000
    case hasThread = 0b100000
    case ephemeral = 0b1000000
    case loading = 0b10000000
}

public struct MessagePayload: Codable {
    public var id: Snowflake
    public var channelId: Snowflake
    public var guildId: Snowflake?
//    public var author: UserPayload
//    public var member: GuildMemberPayload?
    public var content: String
    public var timestamp: String
    public var editedTimestamp: Nullable<String>
    public var tts: Bool
    public var mentionEveryone: Bool
//    public var mentions: [UserPayload]
    public var mentionRoles: [Snowflake]
    public var mentionChannels: [ChannelMentionPayload]?
    public var attachments: [AttachmentPayload]
    public var embeds: [EmbedPayload]
    public var reactions: [ReactionPayload]?
    // FIXME: It can be String or Int
    public var nonce: String?
    public var pinned: Bool
    public var webhookId: String?
    public var type: MessageType
    public var activity: MessageActivityPayload
//    public var application: ApplicationPayload?
    public var applicationId: Snowflake?
    public var messageReference: MessageReferencePayload?
    public var flags: MessageFlags?
//    public var referencedMessage: NullableValue<MessagePayload>?
//    public var interaction: MessageInteractionPayload?
//    public var thread: GuildThreadCHannelPayload?
//    public var components: [ComponentPayload]?
//    public var stickerItems: [StickerItemPayload]?
}

public struct GetChannelMessagesParam {
    public var around: String?
    public var before: String?
    public var after: String?
    public var limit: UInt?
}

public struct CreateMessagePayload: Codable {
    public var content: String
    public var tts: Bool?
    public var file: AttachmentPayload?
    public var files: [AttachmentPayload]?
    public var embeds: [EmbedPayload]?
    public var allowedMentions: AllowedMentionPayload?
    public var messageReference: MessageReferencePayload?
//    public var components: [ComponentPayload]
    public var stickerIds: [Snowflake]?
}

public struct GetMessageReactionParams {
    public var after: String?
    public var limit: UInt?
}


public struct EditMessagePayload: Codable {
    public var content: Nullable<String>?
    public var embeds: Nullable<[EmbedPayload]>?
    public var flags: Nullable<MessageFlags>?
    public var file: Nullable<AttachmentPayload>?
    public var allowedMentions: Nullable<AllowedMentionPayload>?
    public var attachments: Nullable<[AttachmentPayload]>?
//    public var components: NullableValue<[ComponentPayload]>?
}

public struct BulkDeleteMessagesPayload: Codable {
    public var messages: [Snowflake]
}
