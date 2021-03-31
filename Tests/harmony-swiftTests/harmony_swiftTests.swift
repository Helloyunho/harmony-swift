import XCTest
@testable import harmony_swift

final class harmony_swiftTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(harmony_swift().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
