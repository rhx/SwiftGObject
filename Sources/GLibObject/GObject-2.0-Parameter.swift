import CGLib
import GLib

// MARK: - Parameter Record

/// The `ParameterProtocol` protocol exposes the methods and properties of an underlying `GParameter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Parameter`.
/// Alternatively, use `ParameterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to `g_object_newv()`.
public protocol ParameterProtocol {
    /// Untyped pointer to the underlying `GParameter` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParameter` instance.
    var _ptr: UnsafeMutablePointer<GParameter> { get }
}

/// The `ParameterRef` type acts as a lightweight Swift reference to an underlying `GParameter` instance.
/// It exposes methods that can operate on this data type through `ParameterProtocol` conformance.
/// Use `ParameterRef` only as an `unowned` reference to an existing `GParameter` instance.
///
/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to `g_object_newv()`.
public struct ParameterRef: ParameterProtocol {
    /// Untyped pointer to the underlying `GParameter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParameterRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParameter>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParameterProtocol`
    init<T: ParameterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Parameter` type acts as an owner of an underlying `GParameter` instance.
/// It provides the methods that can operate on this data type through `ParameterProtocol` conformance.
/// Use `Parameter` as a strong reference or owner of a `GParameter` instance.
///
/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to `g_object_newv()`.
open class Parameter: ParameterProtocol {
    /// Untyped pointer to the underlying `GParameter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Parameter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParameter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GParameter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Parameter` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParameter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GParameter, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ParameterProtocol`
    /// `GParameter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ParameterProtocol`
    public init<T: ParameterProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GParameter, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GParameter`.
    deinit {
        // no reference counting for GParameter, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GParameter, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GParameter, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GParameter, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GParameter, cannot ref(cast(_ptr))
    }



}

// MARK: - no Parameter properties

// MARK: - no signals


public extension ParameterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParameter` instance.
    var _ptr: UnsafeMutablePointer<GParameter> { return ptr.assumingMemoryBound(to: GParameter.self) }

}



