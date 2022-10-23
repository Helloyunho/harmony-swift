//
//  Channel.swift
//
//
//  Created by Helloyunho on 2021/07/12.
//

import Foundation

public protocol ChannelPayload: Codable {
    var id: Snowflake { get set }
    var type: ChannelType { get set }
}

public enum ChannelType: UInt8, Codable {
    case GUILD_TEXT, DM, GUILD_VOICE, GROUP_DM, GUILD_CATEGORY, GUILD_ANNOUNCEMENT
    case ANNOUNCEMENT_THREAD = 10, GUILD_PUBLIC_THREAD, GUILD_PRIVATE_THREAD, GUILD_STAGE_VOICE, GUILD_DIRECTORY, GUILD_FORUM
}

public protocol TextChannelPayload: ChannelPayload {
    var lastMessageId: NullableValue<Snowflake>? { get set }
    var lastPinTimestamp: NullableValue<String>? { get set }
}

public struct CreateChannelInvitePayload {
    public var maxAge: UInt32?
    public var maxUses: UInt8?
    public var temporary: Bool?
    public var unique: Bool?
//    public var targetType: InviteTargetType?
    public var targetUserId: String?
    public var targetApplicationId: String?
}
