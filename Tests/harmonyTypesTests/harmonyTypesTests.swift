import XCTest
@testable import harmonyTypes

final class harmonyTypesTests: XCTestCase {
    func emojiCDNUrlGenerationTest() {
        let emojiID = 861117234315395102
        XCTAssertEqual(CUSTOM_EMOJI(emojiID), URL(string: "\(DISCORD_CDN_URL)/emojis/\(emojiID).png")!)
    }
    
    func guildIconURLGenerationTest() {
        let guildID = 783319033205751809
        let iconHash = "40b7f82ea507e214a67f605eef963eb8"
        XCTAssertEqual(GUILD_ICON(guildID, iconHash), URL(string: "\(DISCORD_CDN_URL)/icons/\(guildID)/\(iconHash).png")!)
    }

    static var allTests = [
        ("emojiCDNUrlGenerationTest", emojiCDNUrlGenerationTest),
        ("guildIconURLGenerationTest", guildIconURLGenerationTest)
    ]
}
