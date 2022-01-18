import XCTest
@testable import harmonyTypes

final class harmonyTypesTests: XCTestCase {
    func emojiCDNUrlGenerationTest() {
        let emojiID = Snowflake(861117234315395102)
        XCTAssertEqual(Endpoints.getCustomEmojiCDN(emojiID), URL(string: "\(DISCORD_CDN_URL)/emojis/\(emojiID).png")!)
    }
    
    func guildIconURLGenerationTest() {
        let guildID = Snowflake(861117234315395102)
        let iconHash = "40b7f82ea507e214a67f605eef963eb8"
        XCTAssertEqual(Endpoints.getGuildIconCDN(guildID, iconHash), URL(string: "\(DISCORD_CDN_URL)/icons/\(guildID)/\(iconHash).png")!)
    }

    static var allTests = [
        ("emojiCDNUrlGenerationTest", emojiCDNUrlGenerationTest),
        ("guildIconURLGenerationTest", guildIconURLGenerationTest)
    ]
}
