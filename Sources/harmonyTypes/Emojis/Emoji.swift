//
//  Emoji.swift
//  
//
//  Created by Helloyunho on 2022/07/29.
//

import Foundation

public struct EmojiPayload: Codable {
    public var id: Nullable<String>
    public var name: Nullable<String>
    public var roles: [Snowflake]?
//    public var user: UserPayload?
    public var requireColons: Bool?
    public var managed: Bool?
    public var animated: Bool?
    public var available: Bool?
}

public struct CreateGuildEmojiPayload: Codable {
    public var name: String
    public var image: String
    public var roles: [Snowflake]
}

public struct EditGuildEmojiPayload: Codable {
    public var name: String?
    public var roles: Nullable<[String]>?
}
