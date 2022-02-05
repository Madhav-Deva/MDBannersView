import XCTest
import MDBannersView

final class MDBannerViewTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
//        XCTAssertEqual(MDBannerView().text, "Hello, World!")
    }
    
    func testFramework() {
        let sut = BannerView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        XCTAssertNotNil(sut)
    }
}
