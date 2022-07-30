//
//  Embed.swift
//  
//
//  Created by Helloyunho on 2022/01/30.
//

import Foundation

public enum EmbedType: String, Codable {
    case rich
    case image
    case video
    case gifv
    case article
    case link
}

public struct EmbedVideoPayload: Codable {
    public var url: String?
    public var proxyUrl: String?
    public var height: UInt?
    public var width: UInt?
}

public typealias EmbedImagePayload = EmbedVideoPayload
public typealias EmbedThumbnailPayload = EmbedImagePayload

public struct EmbedProviderPayload: Codable {
    public var name: String?
    public var url: String?
}

public struct EmbedAuthorPayload: Codable {
    public var name: String?
    public var url: String?
    public var iconUrl: String?
    public var proxyIconUrl: String?
}

public struct EmbedFooterPayload: Codable {
    public var text: String?
    public var iconUrl: String?
    public var proxyIconUrl: String?
}

public struct EmbedFieldPayload: Codable {
    public var name: String?
    public var value: String?
    public var inline: Bool?
}

public struct EmbedPayload: Codable {
    public var title: String?
    public var type: EmbedType?
    public var description: String?
    public var url: String?
    public var timestamp: String?
    public var color: UInt32?
    public var footer: EmbedFooterPayload?
    public var image: EmbedImagePayload?
    public var thumbnail: EmbedThumbnailPayload?
    public var video: EmbedVideoPayload?
    public var provider: EmbedProviderPayload?
    public var author: EmbedAuthorPayload?
    public var fields: [EmbedFieldPayload]?
}
