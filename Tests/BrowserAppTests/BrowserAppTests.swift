import LibraryCode
import XCTest

final class BrowserAppTests: XCTestCase {
  func testDiv() {
    XCTAssertEqual(div("42"), "<div>42</div>")
  }
}
