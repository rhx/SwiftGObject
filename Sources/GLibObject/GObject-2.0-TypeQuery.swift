import CGLib
import GLib

// MARK: - TypeQuery Record

/// The `TypeQueryProtocol` protocol exposes the methods and properties of an underlying `GTypeQuery` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeQuery`.
/// Alternatively, use `TypeQueryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure holding information for a specific type.
/// It is filled in by the `g_type_query()` function.
public protocol TypeQueryProtocol {
    /// Untyped pointer to the underlying `GTypeQuery` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypeQuery` instance.
    var _ptr: UnsafeMutablePointer<GTypeQuery> { get }
}

/// The `TypeQueryRef` type acts as a lightweight Swift reference to an underlying `GTypeQuery` instance.
/// It exposes methods that can operate on this data type through `TypeQueryProtocol` conformance.
/// Use `TypeQueryRef` only as an `unowned` reference to an existing `GTypeQuery` instance.
///
/// A structure holding information for a specific type.
/// It is filled in by the `g_type_query()` function.
public struct TypeQueryRef: TypeQueryProtocol {
    /// Untyped pointer to the underlying `GTypeQuery` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypeQueryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypeQuery>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypeQueryProtocol`
    init<T: TypeQueryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeQuery` type acts as an owner of an underlying `GTypeQuery` instance.
/// It provides the methods that can operate on this data type through `TypeQueryProtocol` conformance.
/// Use `TypeQuery` as a strong reference or owner of a `GTypeQuery` instance.
///
/// A structure holding information for a specific type.
/// It is filled in by the `g_type_query()` function.
open class TypeQuery: TypeQueryProtocol {
    /// Untyped pointer to the underlying `GTypeQuery` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeQuery` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTypeQuery>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeQuery` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeQuery` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTypeQuery>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeQuery, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TypeQueryProtocol`
    /// `GTypeQuery` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeQueryProtocol`
    public init<T: TypeQueryProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTypeQuery, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypeQuery`.
    deinit {
        // no reference counting for GTypeQuery, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeQuery, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeQuery, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeQuery, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeQuery, cannot ref(cast(_ptr))
    }



}

// MARK: - no TypeQuery properties

// MARK: - no signals


public extension TypeQueryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeQuery` instance.
    var _ptr: UnsafeMutablePointer<GTypeQuery> { return ptr.assumingMemoryBound(to: GTypeQuery.self) }

    /// Queries the type system for information about a specific type.
    /// This function will fill in a user-provided structure to hold
    /// type-specific information. If an invalid `GType` is passed in, the
    /// `type` member of the `GTypeQuery` is 0. All members filled into the
    /// `GTypeQuery` structure should be considered constant and have to be
    /// left untouched.
    func typeQuery(type: GType) {
        g_type_query(type, cast(_ptr))
    
    }
}



