import XCTest
import CGLib
@testable import GLibObject

class GLibObjectTests: XCTestCase {

    /// test fundamental types
    func testTypeFundamental() {
        let gt: GType = 20
        let type = typeFundamental(typeID: gt)
        XCTAssertEqual(type, gt)
        let name = typeName(type: gt)
        XCTAssertNotNil(name)
    }

    /// test whether creating an empty object works
    func testCreateObject() {
        var param = GParameter()
        let object = Object.newv(objectType: 0, nParameters: 0, parameters: &param)
        XCTAssertNil(object)
    }

}
extension GLibObjectTests {
    static var allTests : [(String, (GLibObjectTests) -> () throws -> Void)] {
        return [
            ("testTypeFundamental", testTypeFundamental),
            ("testCreateObject",    testCreateObject),
        ]
    }
}
