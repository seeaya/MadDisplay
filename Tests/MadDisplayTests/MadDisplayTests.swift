import XCTest
@testable import MadDisplay

final class MadDisplayTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MadDisplay().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
