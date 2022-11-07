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

public enum ChannelPayloads: Codable {
    case DM(DMChannelPayload)
    case guildText(GuildTextChannelPayload)
    case guildVoice(GuildVoiceChannelPayload)
    case groupDM(GroupDMChannelPayload)
    case guildCategory(GuildCategoryPayload)
    case guildAnnouncement(GuildAnnouncementChannelPayload)
    case announcementThread(GuildThreadChannelPayload)
    case guildPublicThread(GuildThreadChannelPayload)
    case guildPrivateThread(GuildThreadChannelPayload)
//    case guildStageVoice
//    case guildDirectory
//    case guildForum
    
    enum CodingKeys: CodingKey {
        case type
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let singleContainer = try decoder.singleValueContainer()
        let type: ChannelType = try container.decode(ChannelType.self, forKey: .type)
        switch (type) {
        case .GUILD_TEXT:
            self = .guildText(try singleContainer.decode(GuildTextChannelPayload.self))
        case .DM:
            self = .DM(try singleContainer.decode(DMChannelPayload.self))
        case .GUILD_VOICE:
            self = .guildVoice(try singleContainer.decode(GuildVoiceChannelPayload.self))
        case .GROUP_DM:
            self = .groupDM(try singleContainer.decode(GroupDMChannelPayload.self))
        case .GUILD_CATEGORY:
            self = .guildCategory(try singleContainer.decode(GuildCategoryPayload.self))
        case .GUILD_ANNOUNCEMENT:
            self = .guildAnnouncement(try singleContainer.decode(GuildAnnouncementChannelPayload.self))
        case .ANNOUNCEMENT_THREAD:
            self = .announcementThread(try singleContainer.decode(GuildThreadChannelPayload.self))
        case .GUILD_PUBLIC_THREAD:
            self = .guildPublicThread(try singleContainer.decode(GuildThreadChannelPayload.self))
        case .GUILD_PRIVATE_THREAD:
            self = .guildPrivateThread(try singleContainer.decode(GuildThreadChannelPayload.self))
//        case .GUILD_STAGE_VOICE:
//            break
//        case .GUILD_DIRECTORY:
//            break
//        case .GUILD_FORUM:
//            break
        default:
            fatalError("Type not implemented")
        }
    }
    
    public func encode(to encoder: Encoder) throws {
    }
}

public enum ChannelType: UInt8, Codable {
    case GUILD_TEXT, DM, GUILD_VOICE, GROUP_DM, GUILD_CATEGORY, GUILD_ANNOUNCEMENT
    case ANNOUNCEMENT_THREAD = 10, GUILD_PUBLIC_THREAD, GUILD_PRIVATE_THREAD, GUILD_STAGE_VOICE, GUILD_DIRECTORY, GUILD_FORUM
}

public protocol TextChannelPayload: ChannelPayload {
    var lastMessageId: Nullable<Snowflake>? { get set }
    var lastPinTimestamp: Nullable<String>? { get set }
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
