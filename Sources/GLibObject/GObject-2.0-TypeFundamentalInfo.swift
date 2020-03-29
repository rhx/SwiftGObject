import CGLib
import GLib

// MARK: - TypeFundamentalInfo Record

/// The `TypeFundamentalInfoProtocol` protocol exposes the methods and properties of an underlying `GTypeFundamentalInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeFundamentalInfo`.
/// Alternatively, use `TypeFundamentalInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure that provides information to the type system which is
/// used specifically for managing fundamental types.
public protocol TypeFundamentalInfoProtocol {
    /// Untyped pointer to the underlying `GTypeFundamentalInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypeFundamentalInfo` instance.
    var _ptr: UnsafeMutablePointer<GTypeFundamentalInfo> { get }
}

/// The `TypeFundamentalInfoRef` type acts as a lightweight Swift reference to an underlying `GTypeFundamentalInfo` instance.
/// It exposes methods that can operate on this data type through `TypeFundamentalInfoProtocol` conformance.
/// Use `TypeFundamentalInfoRef` only as an `unowned` reference to an existing `GTypeFundamentalInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing fundamental types.
public struct TypeFundamentalInfoRef: TypeFundamentalInfoProtocol {
    /// Untyped pointer to the underlying `GTypeFundamentalInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypeFundamentalInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypeFundamentalInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypeFundamentalInfoProtocol`
    init<T: TypeFundamentalInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeFundamentalInfo` type acts as an owner of an underlying `GTypeFundamentalInfo` instance.
/// It provides the methods that can operate on this data type through `TypeFundamentalInfoProtocol` conformance.
/// Use `TypeFundamentalInfo` as a strong reference or owner of a `GTypeFundamentalInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing fundamental types.
open class TypeFundamentalInfo: TypeFundamentalInfoProtocol {
    /// Untyped pointer to the underlying `GTypeFundamentalInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeFundamentalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTypeFundamentalInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeFundamentalInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeFundamentalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTypeFundamentalInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeFundamentalInfo, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TypeFundamentalInfoProtocol`
    /// `GTypeFundamentalInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeFundamentalInfoProtocol`
    public init<T: TypeFundamentalInfoProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTypeFundamentalInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypeFundamentalInfo`.
    deinit {
        // no reference counting for GTypeFundamentalInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeFundamentalInfo, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeFundamentalInfo, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeFundamentalInfo, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeFundamentalInfo, cannot ref(cast(_ptr))
    }



}

// MARK: - no TypeFundamentalInfo properties

// MARK: - no signals


public extension TypeFundamentalInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeFundamentalInfo` instance.
    var _ptr: UnsafeMutablePointer<GTypeFundamentalInfo> { return ptr.assumingMemoryBound(to: GTypeFundamentalInfo.self) }

    /// Registers `type_id` as the predefined identifier and `type_name` as the
    /// name of a fundamental type. If `type_id` is already registered, or a
    /// type named `type_name` is already registered, the behaviour is undefined.
    /// The type system uses the information contained in the `GTypeInfo` structure
    /// pointed to by `info` and the `GTypeFundamentalInfo` structure pointed to by
    /// `finfo` to manage the type and its instances. The value of `flags` determines
    /// additional characteristics of the fundamental type.
    func typeRegisterFundamental(typeID type_id: GType, typeName type_name: UnsafePointer<gchar>, info: TypeInfoProtocol, flags: TypeFlags) -> GType {
        let rv = g_type_register_fundamental(type_id, type_name, cast(info.ptr), cast(_ptr), flags)
        return rv
    }
}



