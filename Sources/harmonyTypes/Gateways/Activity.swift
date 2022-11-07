//
//  Activity.swift
//  
//
//  Created by Helloyunho on 2022/08/06.
//

import Foundation

public struct ActivityPayload: Codable {
    public var name: String
    public var type: ActivityType
    public var url: Nullable<String>?
    public var created_at: UInt
    public var timestamps: ActivityTimestamps?
    public var applicationId: Snowflake?
    public var details: Nullable<String>?
    public var state: Nullable<String>?
    public var emoji: Nullable<ActivityEmoji>?
    public var party: ActivityParty?
    public var assets: ActivityAsset?
    public var secrets: ActivitySecret?
    public var instance: Bool?
    public var flags: UInt16?
    public var buttons: [ActivityButton]?
}

public enum ActivityType: UInt8, Codable {
    case GAME = 0, STREAMING, LISTENING, WATCHING, CUSTOM, COMPETING
}

public struct ActivityTimestamps: Codable {
    public var start: UInt?
    public var end: UInt?
}

public struct ActivityEmoji: Codable {
    public var name: String
    public var id: Snowflake?
    public var animated: Bool?
}

public struct ActivityParty: Codable {
    public var id: Snowflake?
    public var size: [UInt]
}

public struct ActivityAsset: Codable {
    public var largeImage: String?
    public var largeText: String?
    public var smallImage: String?
    public var smallText: String?
}

public struct ActivitySecret: Codable {
    public var join: String?
    public var spectate: String?
    public var match: String?
}

public enum ActivityFlag: UInt16 {
    case INSTANCE = 0b1
    case JOIN = 0b10
    case SPECTATE = 0b100
    case JOIN_REQUEST = 0b1000
    case SYNC = 0b10000
    case PLAY = 0b100000
    case PARTY_PRIVACY_FRIENDS = 0b1000000
    case PARTY_PRIVACY_VOICE_CHANNEL = 0b10000000
    case EMBEDDED = 0b100000000
}

public struct ActivityButton: Codable {
    public var label: String
    public var url: String
}
