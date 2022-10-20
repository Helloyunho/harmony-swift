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
