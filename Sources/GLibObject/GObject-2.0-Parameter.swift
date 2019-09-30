import CGLib
import GLib

// MARK: - Parameter Record

/// The `ParameterProtocol` protocol exposes the methods and properties of an underlying `GParameter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Parameter`.
/// Alternatively, use `ParameterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to g_object_newv().
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
/// to hand parameter name/value pairs to g_object_newv().
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
/// to hand parameter name/value pairs to g_object_newv().
open class Parameter: ParameterProtocol {
    /// Untyped pointer to the underlying `GParameter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Parameter` instance.
    public init(_ op: UnsafeMutablePointer<GParameter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ParameterProtocol`
    /// `GParameter` does not allow reference counting.
    public convenience init<T: ParameterProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GParameter, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GParameter`.
    deinit {
        // no reference counting for GParameter, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParameter.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParameter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParameter.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParameter>(opaquePointer))
    }



}

// MARK: - no Parameter properties

// MARK: - no signals


public extension ParameterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParameter` instance.
    var _ptr: UnsafeMutablePointer<GParameter> { return ptr.assumingMemoryBound(to: GParameter.self) }

}



