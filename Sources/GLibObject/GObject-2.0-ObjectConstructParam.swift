import CGLib
import GLib

// MARK: - ObjectConstructParam Record

/// The `ObjectConstructParamProtocol` protocol exposes the methods and properties of an underlying `GObjectConstructParam` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ObjectConstructParam`.
/// Alternatively, use `ObjectConstructParamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GObjectConstructParam struct is an auxiliary
/// structure used to hand `GParamSpec`/`GValue` pairs to the `constructor` of
/// a `GObjectClass`.
public protocol ObjectConstructParamProtocol {
    /// Untyped pointer to the underlying `GObjectConstructParam` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GObjectConstructParam` instance.
    var _ptr: UnsafeMutablePointer<GObjectConstructParam> { get }
}

/// The `ObjectConstructParamRef` type acts as a lightweight Swift reference to an underlying `GObjectConstructParam` instance.
/// It exposes methods that can operate on this data type through `ObjectConstructParamProtocol` conformance.
/// Use `ObjectConstructParamRef` only as an `unowned` reference to an existing `GObjectConstructParam` instance.
///
/// The GObjectConstructParam struct is an auxiliary
/// structure used to hand `GParamSpec`/`GValue` pairs to the `constructor` of
/// a `GObjectClass`.
public struct ObjectConstructParamRef: ObjectConstructParamProtocol {
    /// Untyped pointer to the underlying `GObjectConstructParam` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ObjectConstructParamRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ObjectConstructParamProtocol`
    init<T: ObjectConstructParamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ObjectConstructParam` type acts as an owner of an underlying `GObjectConstructParam` instance.
/// It provides the methods that can operate on this data type through `ObjectConstructParamProtocol` conformance.
/// Use `ObjectConstructParam` as a strong reference or owner of a `GObjectConstructParam` instance.
///
/// The GObjectConstructParam struct is an auxiliary
/// structure used to hand `GParamSpec`/`GValue` pairs to the `constructor` of
/// a `GObjectClass`.
open class ObjectConstructParam: ObjectConstructParamProtocol {
    /// Untyped pointer to the underlying `GObjectConstructParam` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ObjectConstructParam` instance.
    public init(_ op: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ObjectConstructParamProtocol`
    /// `GObjectConstructParam` does not allow reference counting.
    public convenience init<T: ObjectConstructParamProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GObjectConstructParam, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GObjectConstructParam`.
    deinit {
        // no reference counting for GObjectConstructParam, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GObjectConstructParam.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GObjectConstructParam.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GObjectConstructParam.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GObjectConstructParam>(opaquePointer))
    }



}

// MARK: - no ObjectConstructParam properties

// MARK: - no signals


public extension ObjectConstructParamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GObjectConstructParam` instance.
    var _ptr: UnsafeMutablePointer<GObjectConstructParam> { return ptr.assumingMemoryBound(to: GObjectConstructParam.self) }

}



