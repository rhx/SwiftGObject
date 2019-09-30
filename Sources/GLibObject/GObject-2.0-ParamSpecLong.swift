import CGLib
import GLib

// MARK: - ParamSpecLong Class

/// The `ParamSpecLongProtocol` protocol exposes the methods and properties of an underlying `GParamSpecLong` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecLong`.
/// Alternatively, use `ParamSpecLongRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for long integer properties.
public protocol ParamSpecLongProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecLong` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecLong` instance.
    var param_spec_long_ptr: UnsafeMutablePointer<GParamSpecLong> { get }
}

/// The `ParamSpecLongRef` type acts as a lightweight Swift reference to an underlying `GParamSpecLong` instance.
/// It exposes methods that can operate on this data type through `ParamSpecLongProtocol` conformance.
/// Use `ParamSpecLongRef` only as an `unowned` reference to an existing `GParamSpecLong` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for long integer properties.
public struct ParamSpecLongRef: ParamSpecLongProtocol {
    /// Untyped pointer to the underlying `GParamSpecLong` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_long_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecLongRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecLong>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecLongProtocol`
    init<T: ParamSpecLongProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecLong` type acts as a reference-counted owner of an underlying `GParamSpecLong` instance.
/// It provides the methods that can operate on this data type through `ParamSpecLongProtocol` conformance.
/// Use `ParamSpecLong` as a strong reference or owner of a `GParamSpecLong` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for long integer properties.
open class ParamSpecLong: ParamSpec, ParamSpecLongProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecLong` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecLong>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecLongProtocol`
    /// Will retain `GParamSpecLong`.
    public convenience init<T: ParamSpecLongProtocol>(_ other: T) {
        self.init(cast(other.param_spec_long_ptr))
        g_param_spec_ref(cast(param_spec_long_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecLong.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecLong.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecLong.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecLong>(opaquePointer))
    }



}

// MARK: - no ParamSpecLong properties

// MARK: - no signals


public extension ParamSpecLongProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecLong` instance.
    var param_spec_long_ptr: UnsafeMutablePointer<GParamSpecLong> { return ptr.assumingMemoryBound(to: GParamSpecLong.self) }

}



