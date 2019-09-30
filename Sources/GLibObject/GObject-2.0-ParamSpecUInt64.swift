import CGLib
import GLib

// MARK: - ParamSpecUInt64 Class

/// The `ParamSpecUInt64Protocol` protocol exposes the methods and properties of an underlying `GParamSpecUInt64` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUInt64`.
/// Alternatively, use `ParamSpecUInt64Ref` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned 64bit integer properties.
public protocol ParamSpecUInt64Protocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecUInt64` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecUInt64` instance.
    var param_spec_uint64_ptr: UnsafeMutablePointer<GParamSpecUInt64> { get }
}

/// The `ParamSpecUInt64Ref` type acts as a lightweight Swift reference to an underlying `GParamSpecUInt64` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUInt64Protocol` conformance.
/// Use `ParamSpecUInt64Ref` only as an `unowned` reference to an existing `GParamSpecUInt64` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned 64bit integer properties.
public struct ParamSpecUInt64Ref: ParamSpecUInt64Protocol {
    /// Untyped pointer to the underlying `GParamSpecUInt64` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uint64_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecUInt64Ref {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecUInt64>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecUInt64Protocol`
    init<T: ParamSpecUInt64Protocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecUInt64` type acts as a reference-counted owner of an underlying `GParamSpecUInt64` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUInt64Protocol` conformance.
/// Use `ParamSpecUInt64` as a strong reference or owner of a `GParamSpecUInt64` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned 64bit integer properties.
open class ParamSpecUInt64: ParamSpec, ParamSpecUInt64Protocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecUInt64` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecUInt64>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecUInt64Protocol`
    /// Will retain `GParamSpecUInt64`.
    public convenience init<T: ParamSpecUInt64Protocol>(_ other: T) {
        self.init(cast(other.param_spec_uint64_ptr))
        g_param_spec_ref(cast(param_spec_uint64_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecUInt64.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecUInt64.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecUInt64.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecUInt64>(opaquePointer))
    }



}

// MARK: - no ParamSpecUInt64 properties

// MARK: - no signals


public extension ParamSpecUInt64Protocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUInt64` instance.
    var param_spec_uint64_ptr: UnsafeMutablePointer<GParamSpecUInt64> { return ptr.assumingMemoryBound(to: GParamSpecUInt64.self) }

}



