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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GObjectConstructParam` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GObjectConstructParam, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ObjectConstructParamProtocol`
    /// `GObjectConstructParam` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ObjectConstructParamProtocol`
    public init<T: ObjectConstructParamProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GObjectConstructParam, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GObjectConstructParam`.
    deinit {
        // no reference counting for GObjectConstructParam, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GObjectConstructParam, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GObjectConstructParam, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GObjectConstructParam, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GObjectConstructParam, cannot ref(cast(_ptr))
    }



}

// MARK: - no ObjectConstructParam properties

// MARK: - no signals


public extension ObjectConstructParamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GObjectConstructParam` instance.
    var _ptr: UnsafeMutablePointer<GObjectConstructParam> { return ptr.assumingMemoryBound(to: GObjectConstructParam.self) }

}



