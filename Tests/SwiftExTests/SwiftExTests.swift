import XCTest
@testable import SwiftEx

final class SwiftExTests: XCTestCase {
	func testExample() throws {
		XCTAssertEqual("Hello World".sha256(), "a591a6d40bf420404a011733cfb7b190d62c65bf0bcda32b57b277d9ad9f146e")
	}
}
