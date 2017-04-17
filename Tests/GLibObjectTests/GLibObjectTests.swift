import XCTest
import CGLib
@testable import GLibObject

class GLibObjectTests: XCTestCase {
    fileprivate static var initialised: Bool = false

    override func setUp() {
        if !GLibObjectTests.initialised {
            GLibObjectTests.initialised = true
        }
    }
    /// test fundamental types
    func testTypeFundamental() {
        let gt = GType.object
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

    /// test bindings and transformations between instances of two distinct types
    func testBindings() {
        let typeA = type_a_get_type()
        let typeB = type_b_get_type()
        XCTAssertNotEqual(typeA, 0)
        XCTAssertNotEqual(typeB, 0)
        XCTAssertNotEqual(typeA, typeB)
        XCTAssertTrue(typeA.isClassed)
        XCTAssertTrue(typeB.isClassed)
        XCTAssertTrue(typeA.isDerived)
        XCTAssertTrue(typeB.isDerived)
        XCTAssertTrue(typeA.isDerivable)
        XCTAssertTrue(typeB.isDerivable)
        XCTAssertTrue(typeA.isDeepDerivable)
        XCTAssertTrue(typeB.isDeepDerivable)
        XCTAssertTrue(typeA.isInstantiable)
        XCTAssertTrue(typeB.isInstantiable)
        XCTAssertTrue(typeA.isValueType)
        XCTAssertTrue(typeB.isValueType)
        XCTAssertFalse(typeA.isAbstract)
        XCTAssertFalse(typeB.isAbstract)
        XCTAssertFalse(typeA.isAbstractValue)
        XCTAssertFalse(typeB.isAbstractValue)
        guard let objA = Object.new(typeA),
              let objB = Object.new(typeB) else {
                XCTFail("Cannot instantiate objects")
                return
        }
        objA.ptr.withMemoryRebound(to: GTypeA.self, capacity: 1) {
            let ptrA = $0
            XCTAssertEqual(ptrA.pointee.integer, 0)
            let value1: Value = 1
            type_a_set_property(objA.ptr, 1, value1.ptr, nil)
            XCTAssertEqual(ptrA.pointee.integer, 1)
            objB.ptr.withMemoryRebound(to: GTypeB.self, capacity: 1) {
                let ptrB = $0
                let value2: Value = "2"
                type_b_set_property(objB.ptr, 1, value2.ptr, nil)
                XCTAssertEqual(ptrB.pointee.string, "2")
                let binding = objB.bind(stringProperty, to: objA, property: integerProperty) { (s: String) -> Int? in
                    print("Converting String(\(s)) -> Int(\(s))")
                    return Int(s)
                }
                XCTAssertNotNil(binding)
                binding?.unbind()
                // XCTAssertEqual(ptrA.pointee.integer, 2)
            }
        }
    }
}
extension GLibObjectTests {
    static var allTests : [(String, (GLibObjectTests) -> () throws -> Void)] {
        return [
            ("testTypeFundamental", testTypeFundamental),
            ("testCreateObject",    testCreateObject),
            ("testBindings",        testBindings),
        ]
    }
}


fileprivate struct GTypeA {
    var parent: GObject
    var integer: Int
}
fileprivate let integerProperty: PropertyName = "integer"

fileprivate struct GTypeAClass {
    var parent: GObjectClass
}

fileprivate struct GTypeB {
    var parent: GObject
    var string: String
}
fileprivate let stringProperty: PropertyName = "string"

fileprivate struct GTypeBClass {
    var parent: GObjectClass
}

fileprivate func type_a_class_init(_ cl: gpointer?, _: gpointer?) {
    guard let object_class = cl?.assumingMemoryBound(to: GObjectClass.self) else { return }
    object_class.pointee.set_property = type_a_set_property
    object_class.pointee.get_property = type_a_get_property
    g_object_class_install_property(object_class, 1, g_param_spec_string(integerProperty.name, integerProperty.name, "Integer property", "", G_PARAM_READWRITE))
}

fileprivate func type_b_class_init(_ cl: gpointer?, _: gpointer?) {
    guard let object_class = cl?.assumingMemoryBound(to: GObjectClass.self) else { return }
    object_class.pointee.set_property = type_b_set_property
    object_class.pointee.get_property = type_b_get_property
    g_object_class_install_property(object_class, 1, g_param_spec_string(stringProperty.name, stringProperty.name, "String property", "", G_PARAM_READWRITE))
}

fileprivate var typeA: GType = 0
fileprivate var typeB: GType = 0

fileprivate func type_a_get_type() -> GType {
    if typeA == 0 {
        typeA = g_type_register_static_simple(.object, "GTypeA", guint(MemoryLayout<GTypeAClass>.size), type_a_class_init, guint(MemoryLayout<GTypeA>.size), nil,  GTypeFlags(rawValue: 0))
    }
    return typeA
}

fileprivate func type_b_get_type() -> GType {
    if typeB == 0 {
        typeB = g_type_register_static_simple(.object, "GTypeB", guint(MemoryLayout<GTypeBClass>.size), type_b_class_init, guint(MemoryLayout<GTypeB>.size), nil,  GTypeFlags(rawValue: 0))
    }
    return typeB
}

fileprivate func type_a_set_property(_ object: UnsafeMutablePointer<GObject>?, _ property_id: guint, _ value: UnsafePointer<GValue>?, _ pspec: UnsafeMutablePointer<GParamSpec>?) {
    guard let iptr = object.map({ $0.withMemoryRebound(to: GTypeA.self, capacity: 1) { p in p } }),
          let valueRef = value.map(ValueRef.init) else { return }
    iptr.pointee.integer = valueRef.get()
}

fileprivate func type_a_get_property(_ object: UnsafeMutablePointer<GObject>?, _ property_id: guint, _ value: UnsafeMutablePointer<GValue>?, _ pspec: UnsafeMutablePointer<GParamSpec>?) {
    guard let iptr = object.map({ $0.withMemoryRebound(to: GTypeA.self, capacity: 1) { p in p } }),
        let valueRef = value.map({ ValueRef($0) }) else { return }
    valueRef.set(iptr.pointee.integer)
}

fileprivate func type_b_set_property(_ object: UnsafeMutablePointer<GObject>?, _ property_id: guint, _ value: UnsafePointer<GValue>?, _ pspec: UnsafeMutablePointer<GParamSpec>?) {
    guard let iptr = object.map({ $0.withMemoryRebound(to: GTypeB.self, capacity: 1) { p in p } }),
        let valueRef = value.map(ValueRef.init),
        let s: String = valueRef.get() else { return }
    iptr.pointee.string = s
}

fileprivate func type_b_get_property(_ object: UnsafeMutablePointer<GObject>?, _ property_id: guint, _ value: UnsafeMutablePointer<GValue>?, _ pspec: UnsafeMutablePointer<GParamSpec>?) {
    guard let iptr = object.map({ $0.withMemoryRebound(to: GTypeB.self, capacity: 1) { p in p } }),
        let valueRef = value.map({ ValueRef($0) }) else { return }
    valueRef.set(iptr.pointee.string)
}
