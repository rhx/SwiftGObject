import CGLib
import GLib

// MARK: - ParamSpecFlags Class

/// The `ParamSpecFlagsProtocol` protocol exposes the methods and properties of an underlying `GParamSpecFlags` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecFlags`.
/// Alternatively, use `ParamSpecFlagsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
public protocol ParamSpecFlagsProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecFlags` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecFlags` instance.
    var param_spec_flags_ptr: UnsafeMutablePointer<GParamSpecFlags> { get }
}

/// The `ParamSpecFlagsRef` type acts as a lightweight Swift reference to an underlying `GParamSpecFlags` instance.
/// It exposes methods that can operate on this data type through `ParamSpecFlagsProtocol` conformance.
/// Use `ParamSpecFlagsRef` only as an `unowned` reference to an existing `GParamSpecFlags` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
public struct ParamSpecFlagsRef: ParamSpecFlagsProtocol {
    /// Untyped pointer to the underlying `GParamSpecFlags` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_flags_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecFlagsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecFlags>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecFlagsProtocol`
    init<T: ParamSpecFlagsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecFlags` type acts as a reference-counted owner of an underlying `GParamSpecFlags` instance.
/// It provides the methods that can operate on this data type through `ParamSpecFlagsProtocol` conformance.
/// Use `ParamSpecFlags` as a strong reference or owner of a `GParamSpecFlags` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
open class ParamSpecFlags: ParamSpec, ParamSpecFlagsProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecFlags` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecFlags>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecFlagsProtocol`
    /// Will retain `GParamSpecFlags`.
    public convenience init<T: ParamSpecFlagsProtocol>(_ other: T) {
        self.init(cast(other.param_spec_flags_ptr))
        g_param_spec_ref(cast(param_spec_flags_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecFlags.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecFlags.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecFlags.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecFlags>(opaquePointer))
    }



}

// MARK: - no ParamSpecFlags properties

// MARK: - no signals


public extension ParamSpecFlagsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecFlags` instance.
    var param_spec_flags_ptr: UnsafeMutablePointer<GParamSpecFlags> { return ptr.assumingMemoryBound(to: GParamSpecFlags.self) }

}



