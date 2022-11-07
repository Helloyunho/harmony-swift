//
//  Gateway.swift
//  
//
//  Created by Helloyunho on 2022/08/11.
//

import Foundation

public struct GatewayPayload: Codable {
    public var op: GatewayOpcode
    public var d: Nullable<GatewayDataType>
    public var s: Nullable<UInt>
    public var t: Nullable<GatewayEventNames>
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: GatewayPayload.CodingKeys.self)
        self.op = try container.decode(GatewayOpcode.self, forKey: .op)
        self.s = try container.decode(Nullable<UInt>.self, forKey: .s)
        self.t = try container.decode(Nullable<GatewayEventNames>.self, forKey: .t)
        
        if case let .value(name) = self.t {
            switch (name) {
            case .READY: break
            case .RESUMED:
                break
            case .CHANNEL_CREATE:
                self.d = try container.decode(Nullable<ChannelPayloads>.self, forKey: .d)
            case .CHANNEL_UPDATE:
                break
            case .CHANNEL_DELETE:
                break
            case .CHANNEL_PINS_UPDATE:
                break
            case .THREAD_CREATE:
                break
            case .THREAD_UPDATE:
                break
            case .THREAD_DELETE:
                break
            case .THREAD_LIST_SYNC:
                break
            case .THREAD_MEMBER_UPDATE:
                break
            case .THREAD_MEMBERS_UPDATE:
                break
            case .GUILD_CREATE:
                break
            case .GUILD_UPDATE:
                break
            case .GUILD_DELETE:
                break
            case .GUILD_BAN_ADD:
                break
            case .GUILD_BAN_REMOVE:
                break
            case .GUILD_EMOJIS_UPDATE:
                break
            case .GUILD_STICKERS_UPDATE:
                break
            case .GUILD_INTEGRATIONS_UPDATE:
                break
            case .GUILD_MEMBER_ADD:
                break
            case .GUILD_MEMBER_REMOVE:
                break
            case .GUILD_MEMBER_UPDATE:
                break
            case .GUILD_MEMBERS_CHUNK:
                break
            case .GUILD_ROLE_CREATE:
                break
            case .GUILD_ROLE_UPDATE:
                break
            case .GUILD_ROLE_DELETE:
                break
            case .GUILD_SCHEDULED_EVENT_CREATE:
                break
            case .GUILD_SCHEDULED_EVENT_UPDATE:
                break
            case .GUILD_SCHEDULED_EVENT_DELETE:
                break
            case .GUILD_SCHEDULED_EVENT_USER_ADD:
                break
            case .GUILD_SCHEDULED_EVENT_USER_REMOVE:
                break
            case .INTEGRATION_CREATE:
                break
            case .INTEGRATION_UPDATE:
                break
            case .INTEGRATION_DELETE:
                break
            case .INTERACTION_CREATE:
                break
            case .INVITE_CREATE:
                break
            case .INVITE_DELETE:
                break
            case .MESSAGE_CREATE:
                break
            case .MESSAGE_UPDATE:
                break
            case .MESSAGE_DELETE:
                break
            case .MESSAGE_DELETE_BULK:
                break
            case .MESSAGE_REACTION_ADD:
                break
            case .MESSAGE_REACTION_REMOVE:
                break
            case .MESSAGE_REACTION_REMOVE_ALL:
                break
            case .MESSAGE_REACTION_REMOVE_EMOJI:
                break
            case .PRESENCE_UPDATE:
                break
            case .STAGE_INSTANCE_CREATE:
                break
            case .STAGE_INSTANCE_DELETE:
                break
            case .STAGE_INSTANCE_UPDATE:
                break
            case .TYPING_START:
                break
            case .USER_UPDATE:
                break
            case .VOICE_STATE_UPDATE:
                break
            case .VOICE_SERVER_UPDATE:
                break
            case .WEBHOOKS_UPDATE:
                break
            }
        } else {
            switch (self.op) {
            case .HELLO:
                self.d = try container.decode(Nullable<GatewayHelloPayload>.self, forKey: .d)
            case .DISPATCH:
                break
            case .HEARTBEAT:
                break
            case .IDENTIFY:
                break
            case .PRESENCE_UPDATE:
                break
            case .VOICE_STATE_UPDATE:
                break
            case .RESUME:
                break
            case .RECONNECT:
                break
            case .REQUEST_GUILD_MEMBERS:
                break
            case .INVALID_SESSION:
                break
            case .HEARTBEAT_ACK:
                break
            }
        }
    }
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


