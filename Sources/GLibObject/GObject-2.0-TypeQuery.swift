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
    /// Ownership is transferred to the `TypeQuery` instance.
    public init(_ op: UnsafeMutablePointer<GTypeQuery>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TypeQueryProtocol`
    /// `GTypeQuery` does not allow reference counting.
    public convenience init<T: TypeQueryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTypeQuery, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypeQuery`.
    deinit {
        // no reference counting for GTypeQuery, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTypeQuery.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTypeQuery.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTypeQuery.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTypeQuery>(opaquePointer))
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



