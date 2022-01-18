//
//  CDNEndpoint.swift
//
//
//  Created by Helloyunho on 2021/03/31.
//

import Foundation

public let DISCORD_CDN_URL = URL(string: "https://cdn.discordapp.com")!

public enum ImageExt: String {
    case png, jpg, webp
}

public enum AnimatableImageExt: String {
    case png, jpg, webp, gif
}

public extension Endpoints {
    /**
     Generates Discord custom emoji image URL.

     - parameters:
        - emojiID: ID of an emoji you want to get
        - imageExt: Image extension, available: .png, .jpg, .gif, .webp
     - returns: Discord emoji image URL
     */
    static func getCustomEmojiCDN(_ emojiID: Snowflake, imageExt: AnimatableImageExt = .png) -> URL {
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
    static func getGuildIconCDN(_ guildID: Snowflake, _ iconHash: String, imageExt: AnimatableImageExt = .png) -> URL {
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
    static func getGuildSplashCDN(_ guildID: Snowflake, _ splashHash: String, imageExt: AnimatableImageExt = .png) -> URL {
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
    static func getGuildDiscoverySplashCDN(_ guildID: Snowflake, _ splashHash: String, imageExt: AnimatableImageExt = .png) -> URL {
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
    static func getGuildBannerCDN(_ guildID: Snowflake, _ splashHash: String, imageExt: AnimatableImageExt = .png) -> URL {
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
    static func getDefaultUserAvatarCDN(_ discriminator: Int) -> URL {
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
    static func getDefaultUserAvatarFromModdedCDN(_ discriminatorMod: Int) -> URL {
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
    static func getUserAvatarCDN(_ userID: Snowflake, _ avatarHash: String, imageExt: AnimatableImageExt = .png) -> URL {
        DISCORD_CDN_URL
            .appendingPathComponent("avatars")
            .appendingPathComponent(String(userID))
            .appendingPathComponent(avatarHash)
            .appendingPathExtension(imageExt.rawValue)
    }

    /** Generates Discord application icon URL.

     - parameters:
        - appID: ID of an application
        - iconHash: Hash of an icon
        - imageExt: Image extension, available: .png, .jpg, .webp
     - returns: Discord application icon URL
     */
    static func getApplicationIconCDN(_ appID: Snowflake, _ iconHash: String, imageExt: ImageExt = .png) -> URL {
        DISCORD_CDN_URL
            .appendingPathComponent("app-icons")
            .appendingPathComponent(String(appID))
            .appendingPathComponent(iconHash)
            .appendingPathExtension(imageExt.rawValue)
    }

    /** Generates Discord application cover URL.
     - parameters:
        - appID: ID of an application
        - coverHash: Hash of an cover
        - imageExt: Image extension, available: .png, .jpg, .webp
     - returns: Discord Application cover URL
     */
    static func getApplicationCoverCDN(_ appID: Snowflake, _ coverHash: String, imageExt: ImageExt = .png) -> URL {
        DISCORD_CDN_URL
            .appendingPathComponent("app-icons")
            .appendingPathComponent(String(appID))
            .appendingPathComponent(coverHash)
            .appendingPathExtension(imageExt.rawValue)
    }

    /** Generates Discord application asset URL.
     - parameters:
        - appID: ID of an application
        - assetHash: Hash of an asset
        - imageExt: Image extension, available: .png, .jpg, .webp
     - returns: Discord Application asset URL
     */
    static func getAPplicationAssetCDN(_ appID: Snowflake, _ assetHash: String, imageExt: ImageExt = .png) -> URL {
        DISCORD_CDN_URL
            .appendingPathComponent("app-assets")
            .appendingPathComponent(String(appID))
            .appendingPathComponent(assetHash)
            .appendingPathExtension(imageExt.rawValue)
    }

    /** Generates Discord achivement icon URL.
     - parameters:
        - appID: ID of an application
        - achievementID: ID of an achievement
        - iconHash: Hash of an icon
        - imageExt: Image extension, available: .png, .jpg, .webp
     - returns: Discord Achievement icon URL
     */
    static func getAchivementIconCDN(_ appID: Snowflake, _ achievementID: Snowflake, _ iconHash: String, imageExt: ImageExt = .png) -> URL {
        DISCORD_CDN_URL
            .appendingPathComponent("app-assets")
            .appendingPathComponent(String(appID))
            .appendingPathComponent(String(achievementID))
            .appendingPathComponent(iconHash)
            .appendingPathExtension(imageExt.rawValue)
    }

    /** Generates Discord team icon URL.
     - parameters:
        - teamID: ID of a team
        - iconHash: Hash of an icon
        - imageExt: Image extension, available: .png, .jpg, .webp
     - returns: Discord team icon URL
     */
    static func getTeamIconCDN(_ teamID: Snowflake, _ iconHash: String, imageExt: ImageExt = .png) -> URL {
        DISCORD_CDN_URL
            .appendingPathComponent("team-icons")
            .appendingPathComponent(String(teamID))
            .appendingPathComponent(iconHash)
            .appendingPathExtension(imageExt.rawValue)
    }
}
