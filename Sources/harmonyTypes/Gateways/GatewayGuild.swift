//
//  GatewayGuild.swift
//  
//
//  Created by Helloyunho on 2022/10/20.
//

import Foundation

public struct GatewayGuildBanAddRemovePayload: GatewayDataType {
    var guildId: Snowflake
//    var user: UserPayload
}

public struct GatewayGuildEmojisUpdatePayload: GatewayDataType {
    var guildId: Snowflake
    var emojis: [EmojiPayload]
}

public struct GatewayGuildStickersUpdatePayload: GatewayDataType {
    var guildId: Snowflake
//    var stickers: [StickerPayload]
}

public struct GatewayGuildIntegrationsUpdatePayload: GatewayDataType {
    var guildId: Snowflake
}

//public struct GatewayGuildMemberAddPayload: MemberProtocol {}
