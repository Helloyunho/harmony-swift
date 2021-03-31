import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(harmony_swiftTests.allTests),
    ]
}
#endif
