//
//  Gateway.swift
//  
//
//  Created by Helloyunho on 2022/08/11.
//

import Foundation

public struct GatewayPayload<Payload>: Codable where Payload: GatewayDataType {
    public var op: GatewayOpcode
    public var d: NullableValue<Payload>
    public var s: NullableValue<UInt>
    public var t: NullableValue<GatewayEventNames>
}

public enum GatewayOpcode: UInt8, Codable {
    case DISPATCH = 0
    case HEARTBEAT
    case IDENTIFY
    case PRESENCE_UPDATE
    case VOICE_STATE_UPDATE
    case RESUME = 6
    case RECONNECT
    case REQUEST_GUILD_MEMBERS
    case INVALID_SESSION
    case HELLO
    case HEARTBEAT_ACK
}

public enum GatewayEventNames: String, Codable {
    case READY
    case RESUMED
    case CHANNEL_CREATE
    case CHANNEL_UPDATE
    case CHANNEL_DELETE
    case CHANNEL_PINS_UPDATE
    case THREAD_CREATE
    case THREAD_UPDATE
    case THREAD_DELETE
    case THREAD_LIST_SYNC
    case THREAD_MEMBER_UPDATE
    case THREAD_MEMBERS_UPDATE
    case GUILD_CREATE
    case GUILD_UPDATE
    case GUILD_DELETE
    case GUILD_BAN_ADD
    case GUILD_BAN_REMOVE
    case GUILD_EMOJIS_UPDATE
    case GUILD_STICKERS_UPDATE
    case GUILD_INTEGRATIONS_UPDATE
    case GUILD_MEMBER_ADD
    case GUILD_MEMBER_REMOVE
    case GUILD_MEMBER_UPDATE
    case GUILD_MEMBERS_CHUNK
    case GUILD_ROLE_CREATE
    case GUILD_ROLE_UPDATE
    case GUILD_ROLE_DELETE
    case GUILD_SCHEDULED_EVENT_CREATE
    case GUILD_SCHEDULED_EVENT_UPDATE
    case GUILD_SCHEDULED_EVENT_DELETE
    case GUILD_SCHEDULED_EVENT_USER_ADD
    case GUILD_SCHEDULED_EVENT_USER_REMOVE
    case INTEGRATION_CREATE
    case INTEGRATION_UPDATE
    case INTEGRATION_DELETE
    case INTERACTION_CREATE
    case INVITE_CREATE
    case INVITE_DELETE
    case MESSAGE_CREATE
    case MESSAGE_UPDATE
    case MESSAGE_DELETE
    case MESSAGE_DELETE_BULK
    case MESSAGE_REACTION_ADD
    case MESSAGE_REACTION_REMOVE
    case MESSAGE_REACTION_REMOVE_ALL
    case MESSAGE_REACTION_REMOVE_EMOJI
    case PRESENCE_UPDATE
    case STAGE_INSTANCE_CREATE
    case STAGE_INSTANCE_DELETE
    case STAGE_INSTANCE_UPDATE
    case TYPING_START
    case USER_UPDATE
    case VOICE_STATE_UPDATE
    case VOICE_SERVER_UPDATE
    case WEBHOOKS_UPDATE
}

public struct ConnectGatewayParams {
    public var v: UInt
    public var encoding: GatewayEncodingEnum
    public var compress: String? = "zlib-stream"
    
    public enum GatewayEncodingEnum: String {
        case json
        case etf
    }
}

public protocol GatewayDataType: Codable {}

/// Dummy protocol for null data.
public protocol GatewayNull: GatewayDataType {}

public struct GatewayHelloPayload: GatewayDataType {
    public var heartbeatInterval: UInt
}

public struct GatewayIdentifyPayload: GatewayDataType {
    public var token: String
    public var intents: UInt
    public var properties: GatewayIdentifyProperties
    public var compress: Bool?
    public var largeThreshold: UInt?
    public var shard: [UInt]?
//    public var presence: EditGatewayPresencePayload?
    
    public struct GatewayIdentifyProperties: Codable {
        public var os: String
        public var browser: String
        public var device: String
        
        enum CodingKeys: String, CodingKey {
            case os = "$os"
            case browser = "$browser"
            case device = "$device"
        }
    }
}

public struct GatewayResumePayload: GatewayDataType {
    public var token: String
    public var sessionId: String
    public var seq: UInt
}


