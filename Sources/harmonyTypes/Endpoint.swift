//
//  File.swift
//
//
//  Created by Helloyunho on 2021/03/31.
//

import Foundation

public let DISCORD_API_VERSION = 9
public let DISCORD_API_URL = URL(string: "https://discord.com/api/v\(DISCORD_API_VERSION)")!

public let DISCORD_CDN_URL = URL(string: "https://cdn.discordapp.com")!

public enum ImageExt: String {
    case png, jpg, webp
}

public enum AnimatableImageExt: String {
    case png, jpg, webp, gif
}

/**
 Generates Discord custom emoji image URL.

 - parameters:
    - emojiID: ID of an emoji you want to get
    - imageExt: Image extension, available: .png, .jpg, .gif, .webp
 - returns: Discord emoji image URL
 */
public func CUSTOM_EMOJI(_ emojiID: Int, imageExt: AnimatableImageExt = .png) -> URL {
    DISCORD_CDN_URL
        .appendingPathComponent("emojis")
        .appendingPathComponent(String(emojiID))
        .appendingPathExtension(imageExt.rawValue)
}

/**
 Generates Discord guild icon URL.

 - parameters:
    - guildID: ID of a guild you want to get
    - iconHash: Hash of an icon
    - imageExt: Image extension, available: .png, .jpg, .webp, .gif (only when hash starts with `a_`)
 - returns: Discord guild icon URL
 */
public func GUILD_ICON(_ guildID: Int, _ iconHash: String, imageExt: AnimatableImageExt = .png) -> URL {
    DISCORD_CDN_URL
        .appendingPathComponent("icons")
        .appendingPathComponent(String(guildID))
        .appendingPathComponent(iconHash)
        .appendingPathExtension(imageExt.rawValue)
}

/**
 Generates Discord guild splash URL.

 - parameters:
    - guildID: ID of a guild you want to get
    - splashHash: Hash of a splash
    - imageExt: Image extension, available: .png, .jpg, .webp, .gif
 - returns: Discord guild splash URL
 */
public func GUILD_SPLASH(_ guildID: Int, _ splashHash: String, imageExt: AnimatableImageExt = .png) -> URL {
    DISCORD_CDN_URL
        .appendingPathComponent("splashes")
        .appendingPathComponent(String(guildID))
        .appendingPathComponent(splashHash)
        .appendingPathExtension(imageExt.rawValue)
}

/**
 Generates Discord guild discovery splash URL.

 - parameters:
    - guildID: ID of a guild you want to get
    - splashHash: Hash of a splash
    - imageExt: Image extension, available: .png, .jpg, .webp, .gif
 - returns: Discord guild discovery splash URL
 */
public func GUILD_DISCOVERY_SPLASH(_ guildID: Int, _ splashHash: String, imageExt: AnimatableImageExt = .png) -> URL {
    DISCORD_CDN_URL
        .appendingPathComponent("discovery-splashes")
        .appendingPathComponent(String(guildID))
        .appendingPathComponent(splashHash)
        .appendingPathExtension(imageExt.rawValue)
}

/**
 Generates Discord guild banner URL.

 - parameters:
    - guildID: ID of a guild you want to get
    - bannerHash: Hash of a banner
    - imageExt: Image extension, available: .png, .jpg, .webp, .gif
 - returns: Discord guild banner URL
 */
public func GUILD_BANNER(_ guildID: Int, _ splashHash: String, imageExt: AnimatableImageExt = .png) -> URL {
    DISCORD_CDN_URL
        .appendingPathComponent("banners")
        .appendingPathComponent(String(guildID))
        .appendingPathComponent(splashHash)
        .appendingPathExtension(imageExt.rawValue)
}

/**
 Generates Discord default user avatar URL.

 - parameters:
    - discriminator: User discriminator
 - returns: Discord default user avatar URL
 */
public func DEFAULT_USER_AVATAR(_ discriminator: Int) -> URL {
    DISCORD_CDN_URL
        .appendingPathComponent("embed")
        .appendingPathComponent("avatars")
        .appendingPathComponent(String(discriminator % 5))
        .appendingPathExtension("png")
}

/**
 Generates Discord default user avatar URL.

 - parameters:
    - discriminatorMod: User discriminator modulo 5
 - returns: Discord default user avatar URL
 */
public func DEFAULT_USER_AVATAR_MODDED(_ discriminatorMod: Int) -> URL {
    DISCORD_CDN_URL
        .appendingPathComponent("embed")
        .appendingPathComponent("avatars")
        .appendingPathComponent(String(discriminatorMod))
        .appendingPathExtension("png")
}

/**
 Generates Discord user avatar URL.

 - parameters:
    - userID: ID of an user
    - avatarHash: Hash of an avatar
 - returns: Discord default user avatar URL
 */
public func USER_AVATAR(_ userID: Int, _ avatarHash: String, imageExt: AnimatableImageExt = .png) -> URL {
    DISCORD_CDN_URL
        .appendingPathComponent("avatars")
        .appendingPathComponent(String(userID))
        .appendingPathComponent(avatarHash)
        .appendingPathExtension(imageExt.rawValue)
}
